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
    case configFile = 5
    case writeToFile = 6
    
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
            return "\(errorPrefix) Not a valid url."
        case .configFile:
            return "\(errorPrefix) Check the config file."
        case .writeToFile:
            return "\(errorPrefix) Write to file error. Make sure the output folder specified in the configuration file is created."
        default:
            return "\(errorPrefix) Something went wrong!"
        }
    }
}
