//
//  CommandError.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 1/14/19.
//  Copyright © 2019 Jonathan Samudio. All rights reserved.
//

import Foundation

public enum CommandError: Int {
    case defaultError = 2
    case language
    case validUrl
    case configFile
    case writeToFile
    case modelParse
    case fetchTemplates
    case deserialization
    case templateDirectory
    case templateNotFound
    
    // MARK: - Public Functions
    
    public func displayError(with message: String? = nil, verboseMessage: String? = nil) {
        print(errorString(with: message, verboseMessage: verboseMessage))
        if isFatalError {
            #if RELEASE
            exit(Int32(rawValue))
            #endif
        }
    }
    
    public func errorString(with message: String? = nil, verboseMessage: String? = nil) -> String {
        let errorPrefix = "Error(\(rawValue)):"
        
        switch self {
        case .language:
            return "\(errorPrefix) Language is not recognized."
        case .validUrl:
            return "\(errorPrefix) Not a valid url."
        case .configFile:
            return "\(errorPrefix) Check the config file."
        case .writeToFile:
            return "\(errorPrefix) Write to file error. Make sure the output folder specified in the configuration file is created."
        case .modelParse:
            var errorMessage = """
            \(errorPrefix) Received network response is not parceable.
                Check network response for: \(message ?? "")
            """
            if let verboseMessage = verboseMessage {
                errorMessage += "\n\(verboseMessage)"
            }
            return errorMessage
        case .fetchTemplates:
            return """
            \(errorPrefix) Unable to fetch templates."
                Error Message: \(message ?? "")
            """
        case .deserialization:
            var errorMessage = "\(errorPrefix) Deserialization Error."
            if let verboseMessage = verboseMessage {
                errorMessage += "\n\(verboseMessage)"
            }
            return errorMessage
        case .templateDirectory:
            return "\(errorPrefix) No Template Directory Specified. Check the config file."
        case .templateNotFound:
            return """
            \(errorPrefix) Api Template is not found."
                Check template name: \(message ?? "").
            """
        default:
            return "\(errorPrefix) Something went wrong!"
        }
    }
}

// MARK: - Private Functions
private extension CommandError {
    
    // MARK: - Public Properties
    
    var isFatalError: Bool {
        switch self {
        case .modelParse,
             .fetchTemplates:
            return false
        default:
            return true
        }
    }
}
