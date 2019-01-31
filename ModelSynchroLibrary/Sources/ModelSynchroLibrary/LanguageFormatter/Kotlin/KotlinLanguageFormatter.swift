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
        return "Array"
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
        return "Array<" + type.capitalizedFirstLetter() + ">"
    }
    
    func type(arrayString: String) -> String {
        return arrayString.replacingOccurrences(of: "Array<", with: "").replacingOccurrences(of: ">", with: "")
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
    
    func apiTemplateContext(config: ConfigurationFile) -> [String: Codable] {
        let context: [String: Codable] = [
            "modelImports": modelImports(config: config, endpoints: config.serverAPIInfo?.apis?.first?.endpoints),
            "retrofitImports": retrofitImports(endpoints: config.serverAPIInfo?.apis?.first?.endpoints),
            "api": apiTemplateModels(config: config)
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
    func apiTemplateModels(config: ConfigurationFile) -> APITemplate? {
        guard let api = config.serverAPIInfo?.apis?.first else {
            return nil
        }
        
        var requestTemplates = [APIRequestTemplate]()
        for endpoint in api.endpoints ?? [] {
            let methodAnnotation = httpMethodAnnotation(method: endpoint.method)
            let requestName = "\(endpoint.method.rawValue.lowercased())\(endpoint.responseModelName)"
            let requestTemplate = APIRequestTemplate(name: requestName,
                                                     httpMethodAnnotation: methodAnnotation,
                                                     endpoint: endpoint.endpoint ?? "",
                                                     parameters: parameters(config: config, endpoint: endpoint),
                                                     returnType: endpoint.responseModelName)
            requestTemplates.append(requestTemplate)
        }
        
        return APITemplate(name: api.name, apiRequests: requestTemplates)
    }
    
    func retrofitImports(endpoints: [Endpoint]?) -> [FileImport] {
        var endpointDict = [String: Bool]()
        for endpoint in endpoints ?? [] {
            if endpointDict[endpoint.method.rawValue] == nil {
                endpointDict[endpoint.method.rawValue] = true
            }
            if endpoint.queries != nil {
                endpointDict["Path"] = true
            }
            if endpoint.parameters != nil {
                endpointDict["Body"] = true
            }
        }
        return endpointDict.map { FileImport(name: "retrofit2.http.\($0.key.uppercased())") }
    }
    
    func modelImports(config: ConfigurationFile, endpoints: [Endpoint]?) -> [FileImport] {
        guard let endpoints = endpoints, let package = config.serverAPIInfo?.outputPackage else {
            return []
        }
        var modelDict = [String: Bool]()
        for endpoint in endpoints {
            if modelDict[endpoint.responseModelName] == nil {
                modelDict[endpoint.responseModelName] = true
            }
            if let parameters = endpoint.parameters {
                if modelDict[parameters.modelName] == nil {
                    modelDict[parameters.modelName] = true
                }
            }
        }
        return modelDict.map { FileImport(name: "\(package).\($0.key)") }
    }
    
    func parameters(config: ConfigurationFile, endpoint: Endpoint) -> String {
        var parameterString = ""
        let containsBody = endpoint.parameters != nil
        
        if let queries = endpoint.queries {
            var count = 0
            parameterString += queries.map {
                count += 1
                let jsonParser = JsonParser(config: config, currentModels: ModelComponents())
                let type = jsonParser.parse(key: $0.key, value: $0.value) ?? Type.string
                let typeString = type.toString(formatter: self)
                let lastVariable = (count == queries.count && !containsBody)
                return "@Path(\"\($0.key)\") \($0.key): \(typeString)\(lastVariable ? "" : ",")"
            }.joined(separator: "\n")
        }
        
        if let parameters = endpoint.parameters {
            parameterString += "@Body \(parameters.modelName.lowercaseFirstLetter()): \(parameters.modelName)"
        }
        
        return parameterString
    }
}
