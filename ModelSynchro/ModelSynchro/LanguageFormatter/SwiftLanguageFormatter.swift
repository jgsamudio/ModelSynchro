//
//  SwiftLanguageFormatter.swift
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
    
    func fileHeader(name: String, config: ConfigurationFile) -> String
    func modelClassDeclaration(name: String) -> String 
    func variableString(property: String, type: String) -> String
}

final class SwiftLanguageFormatter: LanguageFormatter {
    
    var fileExtension: String {
        return ".swift"
    }
    
    var optional: String {
        return "?"
    }
    
    var modelClassEndLine: String {
        return "}"
    }
    
    func fileHeader(name: String, config: ConfigurationFile) -> String {
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
    
    func variableString(property: String, type: String) -> String {
        return "\tlet " + property.lowercaseFirstLetter() + ": " + type
    }
}
