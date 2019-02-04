//
//  LanguageFormatter.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

protocol LanguageFormatter: APIGeneratorLanguageFormatter {

    var containsHeader: Bool { get }
    var headerLanguageFormatter: LanguageFormatter? { get }

    var fileExtension: String { get }
    var optional: String { get }
    var modelClassEndLine: String { get }
    var typeSeparator: String { get }
    var lineComment: String { get }
    var array: String { get }

    // Types
    var int: String { get }
    var string: String { get }
    var bool: String { get }
    var double: String { get }

    func fileHeader(name: String,
                    config: ConfigurationFile,
                    propertyLines: [Line],
                    directoryData: DirectoryData?) -> String
    
    func modelClassDeclaration(name: String) -> String
    func variableString(line: Line, isLastVariable: Bool) -> String
    func property(variableString: String) -> String?
    func keyMapping(lines: [Line]) -> String?
    func isVariable(_ string: String) -> Bool
    func keyedProperty(string: String) -> KeyedProperty?
    func arrayFormat(type: String) -> String
    func type(arrayString: String) -> String
    func customFormat(type: String) -> String
    
    func variableFound(property: String,
                       type: String,
                       customProperty: CustomProperty?,
                       dataSource: GeneratorDataSourceProtocol) -> Bool
    
    // API GENERATION PROTOCOL
    
}

extension LanguageFormatter {

    // MARK: - Public Properties
    
    var containsHeader: Bool {
        return false
    }

    var headerLanguageFormatter: LanguageFormatter? {
        return nil
    }
    
    // TODO: TEST to review with kotlin language formatter. Do we need to check type?
    func variableFound(property: String,
                       type: String,
                       customProperty: CustomProperty?,
                       dataSource: GeneratorDataSourceProtocol) -> Bool {
        var variableLine = Line(property: property, type: type, isOptional: true, customProperty: customProperty)
        let optionalLine = variableLine.toString(languageFormatter: self, isLastVariable: true)
        
        variableLine.isOptional = false
        let nonOptionalLine = variableLine.toString(languageFormatter: self, isLastVariable: true)
        
        return dataSource.allLines.contains(optionalLine) || dataSource.allLines.contains(nonOptionalLine)
    }
}

protocol APIGeneratorLanguageFormatter {
    
    func apiTemplateContext(api: Api, config: ConfigurationFile, urlModelDict: [String: String]) -> TemplateContext

    func httpMethodAnnotation(method: HTTPMethod) -> String
    
}

extension APIGeneratorLanguageFormatter {
    
    func apiTemplateContext(api: Api, config: ConfigurationFile, urlModelDict: [String: String]) -> TemplateContext {
        return [:]
    }
    
    func httpMethodAnnotation(method: HTTPMethod) -> String {
        return ""
    }
}
