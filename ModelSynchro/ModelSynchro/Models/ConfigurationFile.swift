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
    let language: String?

    /// Output directory of the program.
    let outputDirectory: String?

    /// List of endpoints to generate models for.
    let endpoints: [Endpoint]?

    /// Header data for the endpoints.
    let headers: [String : String]?

    /// Authentication endpoint used to grab the auth token.
    let authEndpoint: AuthEndpoint?

    /// Local location of json files.
    let localJSONDirectory: [LocalDirectory]?
}

extension ConfigurationFile {
    
    /// Model output path.
    var outputPath: String {
        return ConfigurationParser.projectDirectory + (outputDirectory ?? "")
    }

    func localPath(directory: String) -> String {
        return ConfigurationParser.projectDirectory + directory
    }
    
    /// Current language formatter for the output.
    ///
    /// - Returns: Language formatter interface.
    func languageFormatter() -> LanguageFormatter {
        switch (language ?? "").lowercased() {
        case "swift":
            return SwiftLanguageFormatter()
        case "objective-c":
            return ObjectiveCLanguageFormatter()
        default:
            return SwiftLanguageFormatter()
        }
    }
}
