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
    
    private var previousModelLines: [String]?
    
    init(name: String, config: ConfigurationFile, currentModels: ModelComponents) {
        self.name = name
        self.config = config
        previousModelLines = currentModels[name]
        languageFormatter = config.languageFormatter()
        dataSource = GeneratorDataSource(languageFormatter: config.languageFormatter())
    }
    
    func add(property: String, type: String) {
        
        // Line Generator
        
        previousModelLines?.forEach {
            // Find the customLine
            // 0 -> //
            // Create the line from the custom line
        }
        
        let variableLine = Line(property: property, type: type, isOptional: isOptional)
        
        
        
        
        if !variableFound(property: property, type: type) && !typePriorityUpdated(property: property, type: type) {
            dataSource.appendContent(line: variableLine)
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
    
    func typePriorityUpdated(property: String, type: String) -> Bool {
        return dataSource.contents.reduce(false, { x, y in
            x || y.updatePriorityType(property: property, type: type)
        })
    }
    // TODO: Streamline this
    func variableFound(property: String, type: String) -> Bool {
        var variableLine = Line(property: property, type: type, isOptional: true, customLine: nil)
        let optionalLine = variableLine.toString(languageFormatter: languageFormatter)
        
        variableLine.isOptional = false
        let nonOptionalLine = variableLine.toString(languageFormatter: languageFormatter)
        
        return dataSource.allLines.index(of: optionalLine) != nil || dataSource.allLines.index(of: nonOptionalLine) != nil
    }
}
