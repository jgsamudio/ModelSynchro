//
//  ModelParser.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/30/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

struct ModelContent {
    let fileComponents: [String]
    let customProperties: [CustomProperty]
}

typealias ModelComponents = [String : ModelContent]

final class ModelParser {
    
    // [Filename: [Lines]]
    var customComponents: ModelComponents = [:]

    private let config: ConfigurationFile
    
    private var languageFormatter: LanguageFormatter {
        return config.languageFormatter()
    }
    
    init(config: ConfigurationFile) {
        self.config = config
        loadModels()
        loadLocalModels()
    }
}

private extension ModelParser {

    func loadModels() {
        let fileNames = FileRetriever.retrieveFilenames(at: config.outputPath,
                                                        fileExtension: config.languageFormatter().fileExtension)
        load(fileNames: fileNames, outputPath: config.outputPath)
    }

    func loadLocalModels() {
        config.localJSONDirectory?.forEach {
            let localFilenames = FileRetriever.retrieveFilenames(at: config.localPath(directory: $0.outputDirectory),
                                                                 fileExtension: config.languageFormatter().fileExtension)
            load(fileNames: localFilenames, outputPath: config.localPath(directory: $0.outputDirectory))
        }
    }

    func load(fileNames: [String], outputPath: String) {
        for file in fileNames {
            let fileToParse = outputPath + file
            do {
                let content = try String(contentsOfFile: fileToParse, encoding: String.Encoding.utf8)
                let fileComponents = content.components(separatedBy: "\n")
                let fileName = file.removeTrailing(startWith: languageFormatter.fileExtension)
                parseCustomFileComponents(fileName: fileName, fileComponents: fileComponents)
            } catch {
                print("Error caught with message: \(error.localizedDescription)")
            }
        }
    }
    
    func parseCustomFileComponents(fileName: String, fileComponents: [String]) {
        var keyedProperties = parseKeyedProperties(fileComponents: fileComponents)
        
        let customProperties: [CustomProperty] = fileComponents.compactMap {
            if languageFormatter.isVariable($0),
                let customString = $0.split(at: config.languageFormatter().lineComment),
                let property = config.languageFormatter().property(variableString: customString.leftString) {
                
                return CustomProperty(customLine: customString.leftString,
                                      property: property,
                                      keyedProperty: keyedProperties[property])
            }
            return nil
        }

        customComponents[fileName] = ModelContent(fileComponents: fileComponents, customProperties: customProperties)
    }
    
    private func parseKeyedProperties(fileComponents: [String]) -> [String : KeyedProperty] {
        var keyedProperties = [String : KeyedProperty]()
        
        for component in fileComponents {
            if let keyedProperty = languageFormatter.keyedProperty(string: component) {
                keyedProperties[keyedProperty.mappedProperty] = keyedProperty
            }
        }
        
        return keyedProperties
    }
}
