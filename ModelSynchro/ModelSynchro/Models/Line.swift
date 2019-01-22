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
    func toString(languageFormatter: LanguageFormatter, isLastVariable: Bool = false) -> String {
        return languageFormatter.variableString(line: self, isLastVariable: isLastVariable)
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
