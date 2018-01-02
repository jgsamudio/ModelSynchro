//
//  LanguageFormatter.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

protocol LanguageFormatter {
    
    var fileExtension: String { get }
    var optional: String { get }
    var modelClassEndLine: String { get }
    var typeSeparator: String { get }
    var lineComment: String { get }

    // Types
    var int: String { get }
    var string: String { get }
    var bool: String { get }
    var double: String { get }

    func fileHeader(name: String, config: ConfigurationFile) -> String
    func modelClassDeclaration(name: String) -> String
    func variableString(line: Line) -> String
    func property(variableString: String) -> String?
    func keyMapping(lines: [Line]) -> String
    func isVariable(_ string: String) -> Bool
    func keyedProperty(string: String) -> KeyedProperty?
}
