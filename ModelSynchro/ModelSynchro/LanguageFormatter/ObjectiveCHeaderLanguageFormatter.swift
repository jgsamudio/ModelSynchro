//
//  ObjectiveCHeaderLanguageFormatter.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 1/4/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

final class ObjectiveCHeaderLanguageFormatter: LanguageFormatter {

    var headerLanguageFormatter: LanguageFormatter? {
        return nil
    }

    var fileExtension: String {
        return ".h"
    }

    var optional: String {
        return "nullable"
    }

    var modelClassEndLine: String {
        return "@end"
    }

    var typeSeparator: String {
        return ""
    }

    var lineComment: String {
        return "//"
    }

    var int: String {
        return "NSInteger"
    }

    var bool: String {
        return "BOOL"
    }

    var string: String {
        return "NSString"
    }

    var double: String {
        return "double"
    }

    func fileHeader(name: String, config: ConfigurationFile) -> String {
        return """
        //
        //  \(name).h
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
        return "@interface " + name
    }

    func variableString(line: Line) -> String {
        var generatedLine = "\n"

        if let customLine = line.customProperty?.customLine {
            generatedLine += customLine + " // "
        }

        generatedLine += "@property (nonatomic, strong, readonly) " + line.type + " *" + line.property.lowercaseFirstLetter() + ";"

        return generatedLine
    }

    func property(variableString: String) -> String? {
        guard isVariable(variableString), let property = variableString.stringBetween(startString: "@property (nonatomic, strong, readonly) ", endString: "*") else {
            return nil
        }
        return property.trimmingCharacters(in: .whitespaces)
    }

    func isVariable(_ string: String) -> Bool {
        return string.contains("@property (nonatomic") && string.contains("*")
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

    func keyedProperty(string: String) -> KeyedProperty? {
        if string.contains("case"), let splitString = string.split(at: "=") {
            let mappedProperty = splitString.leftString.removeLeading(startWith: "case").trimmingCharacters(in: .whitespaces)
            let jsonProperty = splitString.rightString.trimmingCharacters(in: .whitespaces).replacingOccurrences(of: "\"", with: "")
            return KeyedProperty(mappedProperty: mappedProperty, jsonProperty: jsonProperty)
        }
        return nil
    }

    func arrayFormat(type: String) -> String {
        return "NSArray<" + type.capitalizedFirstLetter() + ">"
    }

    func customFormat(type: String) -> String {
        return type.capitalizedFirstLetter()
    }
}
