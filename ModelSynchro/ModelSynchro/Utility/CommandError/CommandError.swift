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
    case language = 3
    case validUrl = 4
    case configError = 5
    
    func displayError() {
        print(errorString)
        exit(Int32(rawValue))
    }
    
    var errorString: String {
        let errorPrefix = "Error:"
        
        switch self {
        case .language:
            return "\(errorPrefix) Language is not recognized."
        case .validUrl:
            return "Not a valid url."
        case .configError:
            return "Configuration Error: Check the config file."
        default:
            return "\(errorPrefix) Something went wrong!"
        }
    }
}
