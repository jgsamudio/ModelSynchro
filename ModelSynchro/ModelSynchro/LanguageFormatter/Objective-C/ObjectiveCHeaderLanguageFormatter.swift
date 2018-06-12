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

    var array: String {
        return "NSArray"
    }

    var int: String {
        return "NSInteger"
    }

    var bool: String {
        return "bool"
    }

    var string: String {
        return "NSString"
    }

    var double: String {
        return "double"
    }

    func fileHeader(name: String, config: ConfigurationFile, propertyLines: [Line]) -> String {
        let header = """
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

        #import <Foundation/Foundation.h>
        """

        var headerStringArray: [String] = [header]
        for propertyLine in propertyLines {
            let type = Type.initialize(typeString: propertyLine.type, formatter: self)
            if !type.isPrimitiveType {
                switch type {
                case .array(let type):
                    let arrayType = Type.initialize(typeString: type, formatter: self)
                    if !arrayType.isPrimitiveType {
                        headerStringArray.append("#import \"\(type).h\"")
                    }
                default:
                    headerStringArray.append("#import \"\(propertyLine.type).h\"")
                }
            }
        }
        headerStringArray.append("")

        return headerStringArray.joined(separator: "\n")
    }

    func modelClassDeclaration(name: String) -> String {
        return "@interface " + name + ": NSObject"
    }

    func variableString(line: Line) -> String {
        var generatedLine = "\n"

        if let customLine = line.customProperty?.customLine {
            generatedLine += customLine + " // "
        }

        let type = Type.initialize(typeString: line.type, formatter: self)
        var propertyPrefix = "@property (nonatomic, "

        propertyPrefix += type.isPrimitiveCType ? "assign" : "strong"
        propertyPrefix += (line.isOptional && !type.isPrimitiveCType) ? ", nullable) " : ") "

        let pointer = (type.isPrimitiveCType) ? " " : " *"

        generatedLine += propertyPrefix + line.type + pointer + line.property.lowercaseFirstLetter() + ";"

        return generatedLine
    }

    func property(variableString: String) -> String? {
        guard isVariable(variableString), let property = variableString.stringBetween(startString: ") ", endString: " ") else {
            return nil
        }
        return property.trimmingCharacters(in: .whitespaces)
    }

    func isVariable(_ string: String) -> Bool {
        return string.contains("@property (nonatomic")
    }

    func keyMapping(lines: [Line]) -> String {
        return """

        - (id)initWithDictionary:(NSDictionary *)dictionary;

        """
    }

    func keyedProperty(string: String) -> KeyedProperty? {
        //TODO: Fix me
//        if string.contains("case"), let splitString = string.split(at: "=") {
//            let mappedProperty = splitString.leftString.removeLeading(startWith: "case").trimmingCharacters(in: .whitespaces)
//            let jsonProperty = splitString.rightString.trimmingCharacters(in: .whitespaces).replacingOccurrences(of: "\"", with: "")
//            return KeyedProperty(mappedProperty: mappedProperty, jsonProperty: jsonProperty)
//        }
        return nil
    }

    func arrayFormat(type: String) -> String {
        return "NSArray<" + type.capitalizedFirstLetter() + " *>"
    }

    func type(arrayString: String) -> String {
        return arrayString.replacingOccurrences(of: "NSArray<", with: "").replacingOccurrences(of: " *>", with: "")
    }

    func customFormat(type: String) -> String {
        return type.capitalizedFirstLetter()
    }

    func initializer(name: String, lines: [Line]) -> String? {
        // TODO
        return nil
    }
}
