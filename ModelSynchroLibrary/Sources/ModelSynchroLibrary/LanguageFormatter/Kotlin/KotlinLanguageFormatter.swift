//
//  KotlinLanguageFormatter.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 1/16/19.
//  Copyright © 2019 Jonathan Samudio. All rights reserved.
//

import Foundation

final class KotlinLanguageFormatter: LanguageFormatter {
    
    var fileExtension: String {
        return ".kt"
    }
    
    var optional: String {
        return "?"
    }
    
    var modelClassEndLine: String {
        return ")"
    }
    
    var typeSeparator: String {
        return ":"
    }
    
    var lineComment: String {
        return "//"
    }
    
    var array: String {
        return "ArrayList"
    }
    
    var int: String {
        return "Int"
    }
    
    var bool: String {
        return "Boolean"
    }
    
    var string: String {
        return "String"
    }
    
    var double: String {
        return "Double"
    }
    
    var constantVariable: String {
        return "val"
    }
    
    var apiTemplateName: String {
        return "KotlinApiTemplate"
    }
    
    func fileHeader(name: String,
                    config: ConfigurationFile,
                    propertyLines: [Line],
                    directoryData: DirectoryData?) -> String {
        return """
        package \(directoryData?.outputPackage ?? "")

        import com.squareup.moshi.Json

        /*
            Auto-Generated using ModelSynchro
        */
        
        """
    }
    
    func modelClassDeclaration(name: String) -> String {
        return "data class " + name + "("
    }
    
    func variableString(line: Line, isLastVariable: Bool) -> String {
        var generatedLine = "    "
        
        if let customLine = line.customProperty?.customLine {
            generatedLine += customLine + " // "
        }
        
        let propertyName = line.property.lowercaseFirstLetter()
        generatedLine += "@Json(name = \"\(propertyName)\") \(constantVariable) " + propertyName + ": " + line.type +
            (line.isOptional ? optional : "") + (isLastVariable ? "" : ",")
        
        return generatedLine
    }
    
    func property(variableString: String) -> String? {
        guard isVariable(variableString), let property = variableString.stringBetween(startString: constantVariable,
                                                                                      endString: typeSeparator) else {
            return nil
        }
        return property.trimmingCharacters(in: .whitespaces)
    }
    
    func keyMapping(lines: [Line]) -> String? {
        return nil
    }
    
    func isVariable(_ string: String) -> Bool {
        return string.contains(constantVariable) && string.contains(":")
    }
    
    func keyedProperty(string: String) -> KeyedProperty? {
        if let jsonProperty = string.stringBetween(startString: "@Json(name = ", endString: ")"),
            let mappedProperty = property(variableString: string) {
            return KeyedProperty(mappedProperty: mappedProperty,
                                 jsonProperty: jsonProperty.replacingOccurrences(of: "\"", with: ""))
        }
        return nil
    }
    
    func arrayFormat(type: String) -> String {
        return "\(array)<" + type.capitalizedFirstLetter() + ">"
    }
    
    func type(arrayString: String) -> String {
        return arrayString.replacingOccurrences(of: "\(array)<", with: "").replacingOccurrences(of: ">", with: "")
    }
    
    func customFormat(type: String) -> String {
        return type.capitalizedFirstLetter()
    }
    
    func variableFound(property: String,
                       type: String,
                       customProperty: CustomProperty?,
                       dataSource: GeneratorDataSourceProtocol) -> Bool {
        let foundVariables = dataSource.allLines.filter {
            let currentProperty = self.property(variableString: $0)
            return currentProperty == property || currentProperty == customProperty?.property
        }
        
        return !foundVariables.isEmpty
    }
    
    func apiTemplateContext(api: Api, config: ConfigurationFile, urlModelDict: UrlModelDict) -> TemplateContext {
        let context: TemplateContext = [
            "package": config.directoryInfo.outputApiPackage,
            "modelImports": modelImports(config: config, endpoints: api.endpoints),
            "retrofitImports": retrofitImports(endpoints: api.endpoints),
            "api": apiTemplateModels(config: config, api: api, urlModelDict: urlModelDict)
        ]
        return context
    }
    
    func httpMethodAnnotation(method: HTTPMethod) -> String {
        return "@\(method.rawValue.uppercased())"
    }
}

private extension KotlinLanguageFormatter {
    
    // TODO: Have this be returned from the language formatter?
    // How to handle mulitple apis
    func apiTemplateModels(config: ConfigurationFile, api: Api, urlModelDict: UrlModelDict) -> APITemplate? {
        var requestTemplates = [APIRequestTemplate]()
        for endpoint in api.endpoints ?? [] {
            
            // Retreive the return type.
            let baseUrl = config.serverAPIInfo?.baseUrl
            guard let url = endpoint.urlRequest(baseUrl: baseUrl)?.url?.absoluteString,
                let returnType = urlModelDict[url] else {
                continue
            }
            
            let methodAnnotation = httpMethodAnnotation(method: endpoint.method)
            let requestName = endpoint.functionName ?? "\(endpoint.method.rawValue.lowercased())\(endpoint.responseModelName)"
            
            let requestTemplate = APIRequestTemplate(name: requestName,
                                                     httpMethodAnnotation: methodAnnotation,
                                                     endpoint: endpoint.endpoint ?? "",
                                                     parameters: parameters(config: config, endpoint: endpoint),
                                                     returnType: returnType)
            requestTemplates.append(requestTemplate)
        }
        
        return APITemplate(name: api.name, apiRequests: requestTemplates)
    }
    
    func retrofitImports(endpoints: [Endpoint]?) -> [FileImport] {
        var endpointDict = [String: Bool]()
        for endpoint in endpoints ?? [] {
            if endpointDict[endpoint.method.rawValue] == nil {
                endpointDict[endpoint.method.rawValue.uppercased()] = true
            }
            if endpoint.pathInfo != nil {
                endpointDict["Path"] = true
            }
            if endpoint.bodyInfo != nil {
                endpointDict["Body"] = true
            }
            if endpoint.queryInfo != nil {
                endpointDict["Query"] = true
            }
        }
        return endpointDict.map { FileImport(name: "retrofit2.http.\($0.key)") }
    }
    
    func modelImports(config: ConfigurationFile, endpoints: [Endpoint]?) -> [FileImport] {
        guard let endpoints = endpoints, let package = config.directoryInfo.outputModelPackage else {
            return []
        }
        var modelDict = [String: Bool]()
        for endpoint in endpoints {
            if modelDict[endpoint.responseModelName] == nil {
                modelDict[endpoint.responseModelName] = true
            }
            for modelName in endpoint.requestModelNames {
                if modelDict[modelName] == nil {
                    modelDict[modelName] = true
                }
            }
        }
        return modelDict.map { FileImport(name: "\(package).\($0.key)") }
    }
    
    func parameters(config: ConfigurationFile, endpoint: Endpoint) -> String {
        var parameterString = ""
        var parameterCount = 0
    
        parameterString += generateParameterString(config: config,
                                                   requsetData: endpoint.pathInfo?.data,
                                                   annotation: "@Path",
                                                   currentCount: &parameterCount,
                                                   totalCount: endpoint.totalDataCount)
        
        parameterString += generateParameterString(config: config,
                                                   requsetData: endpoint.queryInfo?.data,
                                                   annotation: "@Query",
                                                   currentCount: &parameterCount,
                                                   totalCount: endpoint.totalDataCount)
        
        if let modelName = endpoint.bodyInfo?.modelName {
            parameterString += "@Body \(modelName.lowercaseFirstLetter()): \(modelName)"
        }
        
        return parameterString
    }
    
    private func generateParameterString(config: ConfigurationFile,
                                         requsetData: JSON?,
                                         annotation: String,
                                         currentCount: inout Int,
                                         totalCount: Int) -> String {
        let requsetData = requsetData ?? [:]
        return requsetData.map {
            currentCount += 1
            let jsonParser = JsonParser(config: config, currentModels: ModelComponents())
            let type = jsonParser.parse(key: $0.key, value: $0.value) ?? Type.string
            let typeString = type.toString(formatter: self)
            let lastVariable = (currentCount == totalCount)
            return "\(annotation)(\"\($0.key)\") \($0.key): \(typeString)\(lastVariable ? "" : ",\n")"
        }.joined()
    }
}
