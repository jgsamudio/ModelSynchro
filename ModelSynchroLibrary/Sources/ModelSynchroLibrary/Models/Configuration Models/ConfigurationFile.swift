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
    
    public var openApiDirectory: String? {
        return directoryInfo.openApiJsonDirectory
    }
    
    /// Model output path.
    var outputModelPath: String {
        return ConfigurationFile.projectDirectory + (directoryInfo.outputModelDirectory ?? "")
    }
    
    /// Dictionary used for template generation
    var configDict: [String: String] {
        return ["authorName": authorName,
                "companyName": companyName,
                "projectName": projectName,
                "year": Date.currentYearString,
                "date": Date.currentDateString]
    }
    
    /// Updates the configuration file and models with the json from the configuration source. Used to update the models
    /// with the JSON data for the RequestInfo in Endpoints.
    ///
    /// - Parameter json: Source file configuration JSON.
    public mutating func updateConfiguration(with json: JSON) {
        if let apiJson = json["serverAPIInfo"] as? JSON {
            serverAPIInfo?.updateConfiguration(with: apiJson)
        }
    }
    
    /// Updates the config's server api info with the OpenApi Data.
    ///
    /// - Parameter openApiData: Source data for the OpenApi JSON file.
    public mutating func updateServerApi(with openApiData: Data?) {
        openApiData?.deserializeObject { (api: Openapi?, _) in
            if let openApiJson = openApiData?.serializeToJsonObject(), var openApi = api {
                openApi.updateModel(with: openApiJson)
                serverAPIInfo = OpenApiParser(openApi: openApi).convertToServerApi(config: self)
            }
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
    
    /// Applies the naming conventions to the given string.
    ///
    /// - Parameter string: String to apply the naming conventions to.
    /// - Returns: Formatted string.
    func applyNamingConventions(for string: String) -> String {
        return namingConventions?.reduce(string, { (string, namingConvention) -> String in
            namingConvention.apply(to: string)
        }) ?? string
    }
}
