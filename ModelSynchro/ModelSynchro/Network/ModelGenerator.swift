//
//  ModelGenerator.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

struct LineContent {
    var line: String
    let iteration: Int
}

final class ModelGenerator {
    
    var name: String
    var contents = [LineContent]()
    var config: ConfigurationFile
    
    private var currentIteration: Int = 1
    
    private var fileHeader: String {
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
    
    private var fileURLString: String {
        return "file://" + ConfigurationParser.projectDirectory + (config.outputDirectory ?? "") + name + ".swift"
    }
    
    private var optional: String {
        return (currentIteration != 1) ? "?" : ""
    }
    
    init(name: String, config: ConfigurationFile) {
        self.name = name
        self.config = config
        appendContent(line: fileHeader)
        appendContent(line: "struct " + name + ": Codable {")
    }
    
    func add(property: String, type: String) {
        var variableDefinition = variableString(property: property, type: type)
        if !variableFound(variableDefinition: variableDefinition) {
            variableDefinition += optional
            appendContent(line: variableDefinition)
        }
    }
    
    func incrementIteration() {
        // TODO: Move to post completion and update optionals
        currentIteration += 1
    }
    
    func writeToFile() {
        // TODO: Alphabetize
        appendContent(line: "}")
        let fileText = contents.map{ $0.line }.joined(separator: "\n")
        
        guard let fileURL = URL(string: fileURLString) else {
            print("Error: Not a valid url")
            return
        }
        
        do {
            try fileText.write(to: fileURL, atomically: false, encoding: .utf8)
        }
        catch let error {
            print("Error: " + error.localizedDescription)
        }
    }
}

private extension ModelGenerator {
    
    func variableString(property: String, type: String) -> String {
        return "\tlet " + property.lowercaseFirstLetter() + ": " + type
    }
    
    func variableFound(variableDefinition: String) -> Bool {
        let line = contents.map { $0.line }
        return line.index(of: variableDefinition) != nil || line.index(of: variableDefinition + optional) != nil
    }
    
    func appendContent(line: String) {
        contents.append(LineContent(line: line, iteration: currentIteration))
    }
}


