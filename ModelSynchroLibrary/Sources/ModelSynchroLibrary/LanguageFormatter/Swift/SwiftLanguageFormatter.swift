//
//  SwiftLanguageFormatter.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

final class SwiftLanguageFormatter: LanguageFormatter {
    
    var fileExtension: String {
        return ".swift"
    }
    
    var optional: String {
        return "?"
    }
    
    var modelClassEndLine: String {
        return "}\n"
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
        return "Bool"
    }

    var string: String {
        return "String"
    }

    var double: String {
        return "Double"
    }
    
    var constantVariable: String {
        return "let"
    }
    
    var modelTemplateName: String {
        return "SwiftModelTemplate"
    }
    
    func modelTemplateContext(config: ConfigurationFile, name: String, lines: [Line]) -> TemplateContext {
        let context: TemplateContext = [
            "config": config.configDict,
            "model": modelTemplateModel(name: name, lines: lines)
        ]
        return context
    }
    
    func modelTemplateModel(name: String, lines: [Line]) -> ModelTemplate? {
        var properties = [String]()
        let sortedLines = lines.sorted(by: { $0.property < $1.property })
        
        for line in sortedLines {
            // Need to update to Property Types.
            properties.append(variableString(line: line, isLastVariable: sortedLines.last == line))
            
        }
        return ModelTemplate(name: name, properties: properties, package: nil)
    }
    
    func fileHeader(name: String,
                    config: ConfigurationFile,
                    propertyLines: [Line],
                    directoryData: DirectoryData?) -> String {
        return """
        //
        //  \(name).swift
        //  \(config.projectName)
        //
        //  Created by \(config.authorName) on \(Date.currentDateString).
        //  Copyright © \(Date.currentYearString) \(config.companyName). All rights reserved.
        //
        
        /*
            Auto-Generated using ModelSynchro
        */
        
        """
    }
    
    func modelClassDeclaration(name: String) -> String {
        return "struct " + name + ": Codable {"
    }
    
    func variableString(line: Line, isLastVariable: Bool) -> String {
        var generatedLine = "\t"
        
        if let customLine = line.customProperty?.customLine {
            generatedLine += customLine + " // "
        }
        
        generatedLine += "\(constantVariable) " +
            line.property.lowercaseFirstLetter() +
            ": " +
            line.type +
            (line.isOptional ? optional : "")
        
        return generatedLine
    }
    
    func property(variableString: String) -> String? {
        guard isVariable(variableString),
            let property = variableString.stringBetween(startString: constantVariable, endString: ":") else {
            return nil
        }
        return property.trimmingCharacters(in: .whitespaces)
    }
    
    func keyMapping(lines: [Line]) -> String? {
        guard !lines.isEmpty else {
            return ""
        }
        
        var keyMappingStrings = [String]()
        for line in lines {
            let keyedProperty = (line.customProperty?.keyedProperty?.mappedProperty ?? line.property).lowercaseFirstLetter()
            let jsonProperty = (line.customProperty?.keyedProperty?.jsonProperty ?? line.property).lowercaseFirstLetter()
            keyMappingStrings.append("\t\tcase " + keyedProperty + " = \"" + jsonProperty + "\"")
        }
        
        keyMappingStrings = keyMappingStrings.sorted { $0 < $1 }
        keyMappingStrings.insert("\n\tenum CodingKeys: String, CodingKey {", at: 0)
        keyMappingStrings.append("\t}")
        return keyMappingStrings.joined(separator: "\n")
    }
    
    func isVariable(_ string: String) -> Bool {
        return string.contains(constantVariable) && string.contains(":")
    }
    
    func keyedProperty(string: String) -> KeyedProperty? {
        if string.contains("case"), let splitString = string.split(at: "=") {
            let mappedProperty = splitString.leftString.removeLeading(startWith: "case").trimmingCharacters(in: .whitespaces)
            let jsonProperty = splitString.rightString.trimmingCharacters(in: .whitespaces).replacingOccurrences(of: "\"", with: "")
            return KeyedProperty(mappedProperty: mappedProperty, jsonProperty: jsonProperty)
        }
        return nil
    }

    func arrayFormat(type: String) -> String {
        return "[" + type.capitalizedFirstLetter() + "]"
    }

    func type(arrayString: String) -> String {
        return arrayString.replacingOccurrences(of: "[", with: "").replacingOccurrences(of: "]", with: "")
    }

    func customFormat(type: String) -> String {
        return type.capitalizedFirstLetter()
    }
}

// MARK: - APIGeneratorLanguageFormatter
extension SwiftLanguageFormatter {
    
    var apiTemplateName: String {
        return "SwiftApiTemplate"
    }
    
    func apiTemplateContext(api: Api, config: ConfigurationFile, urlModelDict: UrlModelDict) -> TemplateContext {
        let context: TemplateContext = [
            "config": config.configDict,
            "api": apiTemplateModels(config: config, api: api, urlModelDict: urlModelDict)
        ]
        return context
    }
}

private extension SwiftLanguageFormatter {
    
    func apiTemplateModels(config: ConfigurationFile, api: Api, urlModelDict: UrlModelDict) -> APITemplate? {
        var requestTemplates = [APIRequestTemplate]()
        let sortedEndpoints = api.endpoints?.sorted(by: { ($0.functionName ?? "") < ($1.functionName ?? "") })
        for endpoint in sortedEndpoints ?? [] {
            
            // Retreive the return type.
            let baseUrl = config.serverAPIInfo?.baseUrl
            guard let url = endpoint.urlRequest(baseUrl: baseUrl)?.url?.absoluteString else {
                continue
            }
            
            let returnType = urlModelDict[url] ?? "Void"
            let methodAnnotation = httpMethodAnnotation(method: endpoint.method)
            let requestName = endpoint.functionName ?? "\(endpoint.method.rawValue.lowercased())\(endpoint.responseModelName ?? "")"
            
            let requestTemplate = APIRequestTemplate(name: requestName,
                                                     httpMethodAnnotation: methodAnnotation,
                                                     endpoint: endpoint.endpoint ?? "",
                                                     parameters: parameters(config: config, endpoint: endpoint),
                                                     returnType: returnType)
            requestTemplates.append(requestTemplate)
        }
        
        return APITemplate(name: api.name, apiRequests: requestTemplates)
    }
    
    func httpMethodAnnotation(method: HTTPMethod) -> String {
        return ".\(method.rawValue.lowercased())"
    }
    
    func parameters(config: ConfigurationFile, endpoint: Endpoint) -> String {
        var parameterString = ""
        var parameterCount = 0
        
        parameterString += generateParameterString(config: config,
                                                   requestData: endpoint.pathInfo?.data,
                                                   currentCount: &parameterCount,
                                                   totalCount: endpoint.totalDataCount)
        
        parameterString += generateParameterString(config: config,
                                                   requestData: endpoint.queryInfo?.data,
                                                   currentCount: &parameterCount,
                                                   totalCount: endpoint.totalDataCount)
        
        if let modelName = endpoint.bodyInfo?.modelName {
            parameterString += "\(modelName.lowercaseFirstLetter()): \(modelName.capitalized)"
        }
        
        return parameterString
    }
    
    private func generateParameterString(config: ConfigurationFile,
                                         requestData: JSON?,
                                         currentCount: inout Int,
                                         totalCount: Int) -> String {
        let requestData = requestData?.sorted(by: { $0.key < $1.key })
        return requestData?.map {
            currentCount += 1
            let jsonParser = JsonParser(config: config, currentModels: ModelComponents())
            let type = jsonParser.parse(key: $0.key, value: $0.value) ?? Type.string
            let typeString = type.toString(formatter: self)
            let lastVariable = (currentCount == totalCount)
            return "\(config.applyNamingConventions(for: $0.key)): \(typeString)\(lastVariable ? "" : ",\n\t\t\t")"
        }.joined() ?? ""
    }
}
