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
    
    func fileHeader(name: String, config: ConfigurationFile, propertyLines: [Line]) -> String {
        return """
        package com.kapsch.android.signup

        /*
        Auto-Generated using ModelSynchro
        */
        
        """
    }
    
    func modelClassDeclaration(name: String) -> String {
        return "data class " + name + "("
    }
    
    func variableString(line: Line) -> String {
        var generatedLine = "\t"
        
        if let customLine = line.customProperty?.customLine {
            generatedLine += customLine + " // "
        }
        
        generatedLine += "\(constantVariable) " + line.property.lowercaseFirstLetter() + ": " + line.type +
            (line.isOptional ? optional : "") + ","
        
        return generatedLine
    }
    
    func property(variableString: String) -> String? {
        guard isVariable(variableString), let property = variableString.stringBetween(startString: constantVariable,
                                                                                      endString: ":") else {
            return nil
        }
        return property.trimmingCharacters(in: .whitespaces)
    }
    
    func keyMapping(lines: [Line]) -> String {
//        guard !lines.isEmpty else {
//            return ""
//        }
//
//        var keyMappingStrings = [String]()
//        for line in lines {
//            let keyedProperty = (line.customProperty?.keyedProperty?.mappedProperty ?? line.property).lowercaseFirstLetter()
//            let jsonProperty = (line.customProperty?.keyedProperty?.jsonProperty ?? line.property).lowercaseFirstLetter()
//            keyMappingStrings.append("\t\tcase " + keyedProperty + " = \"" + jsonProperty + "\"")
//        }
//
//        keyMappingStrings = keyMappingStrings.sorted { $0 < $1 }
//        keyMappingStrings.insert("\n\tenum CodingKeys: String, CodingKey {", at: 0)
//        keyMappingStrings.append("\t}")
//        return keyMappingStrings.joined(separator: "\n")
        return ""
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
