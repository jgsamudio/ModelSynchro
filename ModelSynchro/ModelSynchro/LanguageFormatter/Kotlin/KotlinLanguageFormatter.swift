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
                    localDirectory: LocalDirectory?) -> String {
        return """
        package \(localDirectory?.outputPackage ?? "")

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
        var generatedLine = "\t"
        
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
                                                                                      endString: ":") else {
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
}
