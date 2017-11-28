//
//  ModelGenerator.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

final class ModelGenerator {
    
    private var name: String
    private var config: ConfigurationFile
    private var dataSource: GeneratorDataSource
    private var languageFormatter: LanguageFormatter
    
    private var fileURLString: String {
        return "file://" + ConfigurationParser.projectDirectory + (config.outputDirectory ?? "") + name + languageFormatter.fileExtension
    }
    
    private var optional: String {
        return (dataSource.currentIteration != 1) ? languageFormatter.optional : ""
    }
    
    init(name: String, config: ConfigurationFile) {
        self.name = name
        self.config = config
        languageFormatter = config.languageFormatter()
        dataSource = GeneratorDataSource(languageFormatter: config.languageFormatter())
    }
    
    func add(property: String, type: String) {
        var variableDefinition = variableString(property: property, type: type)
        if !variableFound(variableDefinition: variableDefinition) {
            variableDefinition += optional
            dataSource.appendContent(line: variableDefinition)
        }
        dataSource.currentLineContent.propertyLines.append(variableDefinition)
    }
    
    func incrementIteration() {
       dataSource.incrementModelIteration()
    }
    
    func writeToFile() {
        guard let fileURL = URL(string: fileURLString) else {
            print("Error: Not a valid url")
            return
        }
        
        do {
            try dataSource.fileText(name: name, config: config).write(to: fileURL, atomically: false, encoding: .utf8)
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
        return dataSource.allLines.index(of: variableDefinition) != nil ||
            dataSource.allLines.index(of: variableDefinition + languageFormatter.optional) != nil
    }
}
