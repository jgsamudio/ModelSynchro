//
//  ModelParser.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/30/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

typealias ModelComponents = [String : [CustomProperty]]

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
    }
}

extension ModelParser {

    func loadModels() {
        let fileNames = retrieveFilenames()

        for file in fileNames {
            let fileToParse = config.outputPath + file
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
    
    func retrieveFilenames() -> [String] {
        let fileEnumerator = FileManager.default.enumerator(atPath: config.outputPath)
        let enumerator = fileEnumerator?.filter{ ($0 as? String)?.contains(config.languageFormatter().fileExtension) ?? false }
        
        guard let filteredFileEnumerator = enumerator as? [String] else {
            print("Error filtering files.")
            return []
        }
        return filteredFileEnumerator
    }
    
    func parseCustomFileComponents(fileName: String, fileComponents: [String]) {
        var keyedProperties = parseKeyedProperties(fileComponents: fileComponents)
        
        customComponents[fileName] = fileComponents.flatMap {
            if languageFormatter.isVariable($0),
                let customString = $0.split(at: config.languageFormatter().lineComment),
                let property = config.languageFormatter().property(variableString: customString.leftString) {
                
                return CustomProperty(customLine: customString.leftString,
                                      property: property,
                                      keyedProperty: keyedProperties[property])
            }
            return nil
        }
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
