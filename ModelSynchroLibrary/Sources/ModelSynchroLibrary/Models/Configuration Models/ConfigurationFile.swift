//
//  ConfigurationFile.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

/// Configuration model for the config file.
public struct ConfigurationFile: Codable {

    // MARK: - Public Properties
    
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
    
    /// Naming conventions
    let namingConventions: [NamingConvention]?
    
    /// Directory information for code generation.
    let directoryInfo: DirectoryInfo

    /// Network endpoints and information to generate network models.
    var serverAPIInfo: ServerAPIInfo?
    
    /// Mapped model names.
    let mappedModelNames: [MappedModelInfo]?
}

extension ConfigurationFile {
    
    public static var projectDirectory = ""
    
    public var containsLocalDirectory: Bool {
        return directoryInfo.localJSONDirectory != nil
    }
    
    public var containsOutputApiDirectory: Bool {
        return directoryInfo.outputApiDirectory != nil
    }
    
    /// Model output path.
    var outputModelPath: String {
        return ConfigurationFile.projectDirectory + (directoryInfo.outputModelDirectory ?? "")
    }
    
    public mutating func updateConfiguration(with json: JSON) {
        if let apiJson = json["serverAPIInfo"] as? JSON {
            serverAPIInfo?.updateConfiguration(with: apiJson)
        }
    }

    /// The local directory path.
    ///
    /// - Parameter directory: Directory of the local json.
    /// - Returns: Full directory path.
    func localPath(directory: String) -> String {
        return ConfigurationFile.projectDirectory + directory
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

    /// Maps the filename to the correct name.
    ///
    /// - Parameter filename: Filename to search for.
    /// - Returns: Mapped model name if found.
    func mapped(filename: String) -> String {
        for modelInfo in mappedModelNames ?? [] {
            if modelInfo.fileName == filename {
                return modelInfo.mappedName
            } else if modelInfo.jsonKey == filename {
                return modelInfo.mappedName
            }
        }
        return applyNamingConventions(for: filename)
    }
    
    func applyNamingConventions(for string: String) -> String {
        return namingConventions?.reduce(string, { (string, namingConvention) -> String in
            namingConvention.apply(to: string)
        }) ?? string
    }
}

enum NamingConvention: String, Codable {
    case removePluralNamesForModels
    case camelCaseNames
    
    func apply(to string: String) -> String {
        switch self {
        case .removePluralNamesForModels:
            if string[string.index(string.endIndex, offsetBy: -2)..<string.endIndex] == "es" {
                return String(string[string.startIndex..<string.index(string.endIndex, offsetBy: -2)])
            } else if string[string.index(before: string.endIndex)] == "s" {
                return String(string[string.startIndex..<string.index(before: string.endIndex)])
            }
        case .camelCaseNames:
            for (index, char) in string.enumerated() {
                if char == "_" {
                    let beginningString = string[string.startIndex..<string.index(string.startIndex, offsetBy: index)]
                    let tailString = string[string.index(string.startIndex, offsetBy: index)..<string.endIndex]
                    return "\(beginningString)\(tailString.capitalized)"
                }
            }
        }
        return string
    }
}
