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
}
