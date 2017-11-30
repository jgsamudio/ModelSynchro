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
    
    private var isOptional: Bool {
        return dataSource.currentIteration != 1
    }
    
    init(name: String, config: ConfigurationFile) {
        self.name = name
        self.config = config
        languageFormatter = config.languageFormatter()
        dataSource = GeneratorDataSource(languageFormatter: config.languageFormatter())
    }
    
    func add(property: String, type: String) {
        // TODO: Remove this line
        let variableDefinition = languageFormatter.variableString(property: property, type: type, isOptional: false)
        var variableLine = Line(property: property, type: type, isOptional: isOptional)
        
        if !variableFound(variableDefinition: variableDefinition) {
            variableLine.isOptional = isOptional
            
            let typeUpdated =  dataSource.contents.reduce(false, { x, y in
                x || y.typePropertyUpdated(property: property, type: type)
            })
            
            if !typeUpdated {
                dataSource.appendContent(line: variableLine)
            }
        }
        
        dataSource.currentLineContent.propertyLines.append(variableLine)
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
    
    func variableFound(variableDefinition: String) -> Bool {
        return dataSource.allLines.index(of: variableDefinition) != nil ||
            dataSource.allLines.index(of: variableDefinition + languageFormatter.optional) != nil
    }
}
