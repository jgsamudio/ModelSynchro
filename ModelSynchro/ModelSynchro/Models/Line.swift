//
//  Line.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

struct Line {
    let property: String
    var type: String
    var isOptional: Bool
}

extension Line {
    
    func toString(languageFormatter: LanguageFormatter) -> String {
        return languageFormatter.variableString(property: property, type: type, isOptional: isOptional)
    }
}
