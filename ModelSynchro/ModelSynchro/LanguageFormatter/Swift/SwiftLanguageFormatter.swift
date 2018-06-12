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
    
    func fileHeader(name: String, config: ConfigurationFile, propertyLines: [Line]) -> String {
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
    
    func variableString(line: Line) -> String {
        var generatedLine = "\t"
        
        if let customLine = line.customProperty?.customLine {
            generatedLine += customLine + " // "
        }
        
        generatedLine += "let " + line.property.lowercaseFirstLetter() + ": " + line.type + (line.isOptional ? optional : "")
        
        return generatedLine
    }
    
    func property(variableString: String) -> String? {
        guard isVariable(variableString), let property = variableString.stringBetween(startString: "let", endString: ":") else {
            return nil
        }
        return property.trimmingCharacters(in: .whitespaces)
    }
    
    func keyMapping(lines: [Line]) -> String {
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

    func initializer(name: String, lines: [Line]) -> String? {
        guard !lines.isEmpty else {
            return nil
        }

        var initializerLineStrings = [String]()
        initializerLineStrings.append("\n\tinit(from decoder: Decoder) throws {")
        initializerLineStrings.append("\t\tlet container = try decoder.container(keyedBy: \(name).CodingKeys.self)\n")

        let sortedLines = lines.sorted(by: { $0.property < $1.property })
        let optionalLines = sortedLines.filter { $0.isCustomLine(optionalToken: optional) }
        let nonOptionalLines = sortedLines.filter { !$0.isCustomLine(optionalToken: optional) }

        for line in optionalLines {
            let keyedProperty = (line.customProperty?.keyedProperty?.mappedProperty ?? line.property).lowercaseFirstLetter()
            let newLine = (line == optionalLines.last) ? "\n" : ""
            let optionalProperty = """
                    \(keyedProperty) = try? container.decode(\(line.type).self, forKey: .\(keyedProperty))\(newLine)
            """
            initializerLineStrings.append(optionalProperty)
        }

        for line in nonOptionalLines {
            let keyedProperty = (line.customProperty?.keyedProperty?.mappedProperty ?? line.property).lowercaseFirstLetter()
            let newLine = (line == nonOptionalLines.last) ? "" : "\n"
            let nonOptionalProperty =
            """
                    do {
                        \(keyedProperty) = try container.decode(\(line.type).self, forKey: .\(keyedProperty))
                    } catch {
                        print("warning: \(keyedProperty) key is not found")
                        throw APIError.noDataRetreived
                    }\(newLine)
            """
            initializerLineStrings.append(nonOptionalProperty)
        }

        initializerLineStrings.append("\t}")
        return initializerLineStrings.joined(separator: "\n")
    }
    
    func isVariable(_ string: String) -> Bool {
        return string.contains("let") && string.contains(":")
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
