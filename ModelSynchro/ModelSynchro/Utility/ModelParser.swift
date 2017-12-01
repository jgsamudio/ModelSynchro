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
    
    init(config: ConfigurationFile) {
        self.config = config
    }
    
    func loadModels() {
        let fileNames = retrieveFilenames()
        
        for file in fileNames {
            let fileToParse = config.outputPath + file
            do {
                let content = try String(contentsOfFile: fileToParse, encoding: String.Encoding.utf8)
                let fileComponents = content.components(separatedBy: "\n")
                let fileName = file.removeTrailing(startWith: config.languageFormatter().fileExtension)
                parseCustomFileComponents(fileName: fileName, fileComponents: fileComponents)
            } catch {
                print("Error caught with message: \(error.localizedDescription)")
            }
        }
    }
    
    
}

extension ModelParser {
    
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
        customComponents[fileName] = fileComponents.flatMap {
            if $0.isVariable,
                let customString = $0.split(at: config.languageFormatter().lineComment),
                let property = config.languageFormatter().property(variableString: customString.leftString) {
                
                return CustomProperty(customLine: customString.leftString, property: property)
            }
            return nil
        }
    }
}
