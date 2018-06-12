//
//  ObjectiveCLanguageFormatter.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

final class ObjectiveCLanguageFormatter: LanguageFormatter {

    var containsHeader: Bool {
        return true
    }

    var headerLanguageFormatter: LanguageFormatter? {
        return ObjectiveCHeaderLanguageFormatter()
    }

    var fileExtension: String {
        return ".m"
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
        return """
        //
        //  \(name).m
        //  \(config.projectName)
        //
        //  Created by \(config.authorName) on \(Date.currentDateString).
        //  Copyright © \(Date.currentYearString) \(config.companyName). All rights reserved.
        //

        /*
            Auto-Generated using ModelSynchro
        */

        #import "\(name).h"

        """
    }

    func modelClassDeclaration(name: String) -> String {
        return """
        @implementation \(name)

        - (id)initWithDictionary:(NSDictionary *)dictionary {
            self = [self init];
            if (self == nil) return nil;

        """
    }

    func variableString(line: Line) -> String {
        var generatedLine = "\t"

        if let customLine = line.customProperty?.customLine {
            generatedLine += customLine + " // "
        }

        let property = line.property.lowercaseFirstLetter()
        let type = Type.initialize(typeString: line.type, formatter: self)

        if type.toString(formatter: self) == int {
            generatedLine +=  "self." + property + " = [dictionary[@\"\(property)\"] integerValue];"
        } else if type.toString(formatter: self) == bool {
            generatedLine +=  "self." + property + " = [dictionary[@\"\(property)\"] boolValue];"
        } else if type.toString(formatter: self) == double {
                generatedLine +=  "self." + property + " = [dictionary[@\"\(property)\"] doubleValue];"
        } else {
            generatedLine +=  "self." + property + " = [dictionary[@\"\(property)\"] copy];"
        }

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
        guard !lines.isEmpty else {
            return """

                return self;
            }
            """
        }

        var keyMappingStrings = [String]()
        keyMappingStrings.append(
        """

            return self;
        }

        - (id)initWithCoder:(NSCoder *)coder {
            self = [self init];
            if (self == nil) return nil;

        """)

        for line in lines {
            let keyedProperty = (line.customProperty?.keyedProperty?.mappedProperty ?? line.property).lowercaseFirstLetter()
            let jsonProperty = (line.customProperty?.keyedProperty?.jsonProperty ?? line.property).lowercaseFirstLetter()

            let type = Type.initialize(typeString: line.type, formatter: self)

            if type.toString(formatter: self) == int {
                keyMappingStrings.append("\tself." + keyedProperty + " = [coder decodeIntegerForKey:@\"\(jsonProperty)\"];")
            } else if type.toString(formatter: self) == bool {
                keyMappingStrings.append("\tself." + keyedProperty + " = [coder decodeBoolForKey:@\"\(jsonProperty)\"];")
            } else if type.toString(formatter: self) == double {
                keyMappingStrings.append("\tself." + keyedProperty + " = [coder decodeDoubleForKey:@\"\(jsonProperty)\"];")
            } else {
                keyMappingStrings.append("\tself." + keyedProperty + " = [coder decodeObjectForKey:@\"\(jsonProperty)\"];")
            }
        }

        keyMappingStrings.append(
            """

            return self;
        }

        - (void)encodeWithCoder:(NSCoder *)coder {
        """)

        for line in lines {
            let keyedProperty = (line.customProperty?.keyedProperty?.mappedProperty ?? line.property).lowercaseFirstLetter()
            let jsonProperty = (line.customProperty?.keyedProperty?.jsonProperty ?? line.property).lowercaseFirstLetter()

            let type = Type.initialize(typeString: line.type, formatter: self)

            if type.toString(formatter: self) == int {
                keyMappingStrings.append("\t[coder encodeInteger:self.\(keyedProperty) forKey:@\"\(jsonProperty)\"];")
            } else if type.toString(formatter: self) == bool {
                keyMappingStrings.append("\t[coder encodeBool:self.\(keyedProperty) forKey:@\"\(jsonProperty)\"];")
            } else if type.toString(formatter: self) == double {
                keyMappingStrings.append("\t[coder encodeDouble:self.\(keyedProperty) forKey:@\"\(jsonProperty)\"];")
            } else {
                keyMappingStrings.append("\tif (self.\(keyedProperty) != nil) [coder encodeObject:self.\(keyedProperty) forKey:@\"\(jsonProperty)\"];")
            }
        }

        keyMappingStrings.append(
            """
        }

        """)

        return keyMappingStrings.joined(separator: "\n")
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

    func initializer(name: String, lines: [Line]) -> String {
        // TODO
        return ""
    }
    
}
