//
//  Line.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

/// Model describing a line from a network JSON response.
struct Line {

    /// Property of name.
    let property: String

    /// Property's type.
    var type: String

    /// Determines if the property is optional / nullable.
    var isOptional: Bool

    /// Custom property of the line. Used if the developer allows custom keys.
    var customProperty: CustomProperty?
}

extension Line {
    
    /// Converts the line to a string with the given information.
    ///
    /// - Parameter languageFormatter: Language formatter to format the string.
    /// - Returns: Formatted string.
    func toString(languageFormatter: LanguageFormatter) -> String {
        return languageFormatter.variableString(line: self)
    }

    /// Determines if the line is optional, including the custom line.
    ///
    /// - Parameter optionalToken: Optional token to search for.
    /// - Returns: Flag if the property is optional.
    func isCustomLine(optionalToken: String) -> Bool {
        return isOptional || (customProperty?.customLine.contains(optionalToken) ?? false)
    }

    func customType(languageFormatter: LanguageFormatter) -> String {
        if let customLine = customProperty?.customLine {
            return languageFormatter.customType(from: customLine)
        }
        return type
    }

}

extension Line: Equatable {
    
    /// Compares two variable lines. Ignores if the variable is optional.
    ///
    /// - Parameters:
    ///   - lhs: Left Line.
    ///   - rhs: Right Line.
    /// - Returns: Flag if they are equal.
    static func ==(lhs: Line, rhs: Line) -> Bool {
        return lhs.property == rhs.property && lhs.type == rhs.type
    }
}
