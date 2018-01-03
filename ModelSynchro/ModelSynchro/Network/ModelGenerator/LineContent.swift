//
//  LineContent.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

class LineContent {
    
    /// Iteration id.
    let iteration: Int

    /// Lines that are to be added to the model's file
    var fileLines = [Line]()
    
    /// All properties found for this model's iteration.
    var propertyLines = [Line]()
    
    var propertyStringArray: [String] {
        return propertyLines.map { $0.toString(languageFormatter: languageFormatter) }
    }
    
    var fileStringArray: [String] {
        return fileLines.map { $0.toString(languageFormatter: languageFormatter) }
    }
    
    private var languageFormatter: LanguageFormatter
    
    init(iteration: Int, languageFormatter: LanguageFormatter) {
        self.iteration = iteration
        self.languageFormatter = languageFormatter
    }
    
    func checkOptional(otherLineContent: LineContent) {
        for line in propertyLines {
            if propertyLines.find(line: line) == nil,
                let index = fileStringArray.index(of: line.toString(languageFormatter: languageFormatter)) {
                fileLines[index].isOptional = true
            }
        }
    }
    
    func updatePriorityType(property: String, type: String) -> Bool {
        for index in 0..<propertyLines.count {
            let line = propertyLines[index]
            if line.property == property && line.type != type {
                propertyLines[index].type = typePriority(currentType: line.type, newType: type)

                if let fileIndex = fileStringArray.index(of: line.toString(languageFormatter: languageFormatter)) {
                    fileLines[fileIndex].type = typePriority(currentType: line.type, newType: type)
                }
                return true
            }
        }
        return false
    }
}

private extension LineContent {
    
    func typePriority(currentType: String, newType: String) -> String {
        guard let lhsType = PriorityType.priorityType(rawValue: currentType, formatter: languageFormatter),
            let rhsType = PriorityType.priorityType(rawValue: newType, formatter: languageFormatter) else {
                return currentType
        }
        return lhsType.comparePriority(type: rhsType, formatter: languageFormatter) ?? currentType
    }
}
