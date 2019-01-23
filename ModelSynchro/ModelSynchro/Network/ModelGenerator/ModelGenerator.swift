//
//  ModelGenerator.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

final class ModelGenerator: ModelGeneratorProtocol {

    /// Source of the model generator. Used for testing.
    var source: GeneratorDataSourceProtocol {
        return dataSource
    }

    private var name: String
    private var config: ConfigurationFile
    private var dataSource: GeneratorDataSourceProtocol
    private var languageFormatter: LanguageFormatter
    
    private var isOptional: Bool {
        return dataSource.currentIteration != 1
    }
    
    private var previousModelContent: ModelContent?
    
    init(name: String, config: ConfigurationFile, currentModels: ModelComponents) {
        self.name = name
        self.config = config
        // TODOL: rename to customModelLines
        previousModelContent = currentModels[name]
        languageFormatter = config.languageFormatter()
        dataSource = GeneratorDataSource(languageFormatter: config.languageFormatter())
    }

    init(name: String, config: ConfigurationFile, dataSource: GeneratorDataSourceProtocol) {
        self.name = name
        self.config = config
        self.dataSource = dataSource
        languageFormatter = config.languageFormatter()
    }
    
    func add(property: String, type: String) {
        let customProperty = previousModelContent?.customProperties.find(property: property)
        let variableLine = Line(property: property, type: type, isOptional: isOptional, customProperty: customProperty)
        
        if !variableFound(property: property, type: type, customProperty: customProperty) &&
            !typePriorityUpdated(property: property, type: type) {
            
            dataSource.appendContent(line: variableLine)
        }
        dataSource.appendProperty(line: variableLine)
    }
    
    /// Increments the model iteration. Called when a model has completed parsing.
    func incrementIteration() {
       dataSource.incrementModelIteration()
    }
    
    /// Writes the current model to file
    func writeToFile() {
        let directoryData = DirectoryData(outputPackage: config.serverAPIInfo?.outputPackage)
        guard modelContainsUpdates(directoryData: directoryData) else {
            return
        }

        let fileURL = fileURLString(outputDirectory: config.serverAPIInfo?.outputDirectory ?? "")
        let headerURL = headerFileURLString(outputDirectory: config.serverAPIInfo?.outputDirectory ?? "")

        dataSource.fileText(name: name, config: config, directoryData: directoryData).writeToFile(directory: fileURL)
        if languageFormatter.containsHeader {
            dataSource.headerFileText(name: name, config: config, directoryData: directoryData).writeToFile(directory: headerURL)
        }
    }

    func writeToFile(directory: DirectoryData) {
        guard modelContainsUpdates(directoryData: directory) else {
            return
        }

        let outputDirectory = fileURLString(outputDirectory: directory.outputDirectory)
        dataSource.fileText(name: name, config: config, directoryData: directory).writeToFile(directory: outputDirectory)
        if languageFormatter.containsHeader {
            let headerFileText = dataSource.headerFileText(name: name, config: config, directoryData: directory)
            headerFileText.writeToFile(directory: headerFileURLString(outputDirectory: outputDirectory))
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
    func variableFound(property: String, type: String, customProperty: CustomProperty?) -> Bool {
        // HERE
        var variableLine = Line(property: property, type: type, isOptional: true, customProperty: customProperty)
        let optionalLine = variableLine.toString(languageFormatter: languageFormatter, isLastVariable: true)
        
        variableLine.isOptional = false
        let nonOptionalLine = variableLine.toString(languageFormatter: languageFormatter, isLastVariable: true)
        
        return dataSource.allLines.index(of: optionalLine) != nil || dataSource.allLines.index(of: nonOptionalLine) != nil
    }

    func fileURLString(outputDirectory: String) -> String {
        return fileDirectory(outputDirectory: outputDirectory) + languageFormatter.fileExtension
    }

    func headerFileURLString(outputDirectory: String) -> String {
        return fileDirectory(outputDirectory: outputDirectory) +
            (languageFormatter.headerLanguageFormatter?.fileExtension ?? "")
    }

    func fileDirectory(outputDirectory: String) -> String {
        return "file://" + ConfigurationParser.projectDirectory + outputDirectory + name
    }

    func modelContainsUpdates(directoryData: DirectoryData?) -> Bool {
        let newModelLines = dataSource.fileText(name: name,
                                                config: config,
                                                directoryData: directoryData).components(separatedBy: "\n")
        
        guard let previousModelComponents = previousModelContent?.fileComponents,
            newModelLines.count == previousModelComponents.count else {
            return true
        }

        var updatedContent = [String]()

        for index in 0..<previousModelComponents.count {
            if previousModelComponents[index] != newModelLines[index] {
                updatedContent.append(newModelLines[index])
            }
        }

        return updatedContent.count > 1 || !(updatedContent.first?.contains(Date.currentDateString) ?? true)
    }
}
