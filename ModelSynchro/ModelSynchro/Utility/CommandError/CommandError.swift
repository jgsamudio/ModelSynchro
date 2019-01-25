//
//  CommandError.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 1/14/19.
//  Copyright © 2019 Jonathan Samudio. All rights reserved.
//

import Foundation

enum CommandError: Int {
    case defaultError = 2
    case language
    case validUrl
    case configFile
    case writeToFile
    case modelParse
    
    func displayError(with message: String? = nil, verboseMessage: String? = nil) {
        print(errorString(with: message, verboseMessage: verboseMessage))
        if isFatalError {
            #if RELEASE
            exit(Int32(rawValue))
            #endif
        }
    }
    
    func errorString(with message: String? = nil, verboseMessage: String? = nil) -> String {
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
        default:
            return "\(errorPrefix) Something went wrong!"
        }
    }
}

private extension CommandError {
    
    var isFatalError: Bool {
        switch self {
        case .modelParse:
            return false
        default:
            return true
        }
    }
}
