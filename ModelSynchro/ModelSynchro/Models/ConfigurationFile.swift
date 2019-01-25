//
//  ConfigurationFile.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

/// Configuration model for the config file.
struct ConfigurationFile: Codable {

    /// Name of the author / developer.
    let authorName: String

    /// Company name.
    let companyName: String

    /// Project name.
    let projectName: String

    /// Language of the program.
    let language: Language?
    
    /// Flag to output more detailed information.
    let verbose: Bool?

    /// Network endpoints and information to generate network models.
    let serverAPIInfo: ServerAPIInfo?
    
    /// Local location of json files.
    let localJSONDirectory: [DirectoryData]?

    /// Mapped model names.
    let mappedModelNames: [MappedModelInfo]?
}

extension ConfigurationFile {
    
    /// Model output path.
    var outputPath: String {
        return ConfigurationParser.projectDirectory + (serverAPIInfo?.outputDirectory ?? "")
    }

    /// The local directory path.
    ///
    /// - Parameter directory: Directory of the local json.
    /// - Returns: Full directory path.
    func localPath(directory: String) -> String {
        return ConfigurationParser.projectDirectory + directory
    }
    
    /// Current language formatter for the output.
    ///
    /// - Returns: Language formatter interface.
    func languageFormatter() -> LanguageFormatter {
        guard let language = language else {
            CommandError.language.displayError()
            fatalError()
        }
        
        switch language {
        case .swift:
            return SwiftLanguageFormatter()
        case .objectiveC:
            return ObjectiveCLanguageFormatter()
        case .kotlin:
            return KotlinLanguageFormatter()
        }
    }

    /// Maps the json key to the correct name.
    ///
    /// - Parameter jsonKey: Json key to search for.
    /// - Returns: Mapped model name if found.
    func mapped(jsonKey: String) -> String {
        for modelInfo in mappedModelNames ?? [] {
            if modelInfo.jsonKey == jsonKey {
                return modelInfo.mappedName
            }
        }
        return jsonKey
    }

    /// Maps the filename to the correct name.
    ///
    /// - Parameter filename: Filename to search for.
    /// - Returns: Mapped model name if found.
    func mapped(filename: String) -> String {
        for modelInfo in mappedModelNames ?? [] {
            if modelInfo.fileName == filename {
                return modelInfo.mappedName
            }
        }
        return filename
    }
}
