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
    
    func displayError() {
        print(errorString)
        
        switch self {
        case .language:
            exit(Int32(rawValue))
        default:
            return
        }
    }
    
    var errorString: String {
        let errorPrefix = "Error:"
        
        switch self {
        case .language:
            return "\(errorPrefix) Language is not recognized."
        default:
            return "\(errorPrefix) Something went wrong!"
        }
    }
}
