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
    
    /// Checks the current line content with another line content with a different iteration. If a property
    /// is found in this line content and not in the other then the property needs to be optional.
    ///
    /// - Parameter otherLineContent: Other line content to check against.
    func checkOptional(otherLineContent: LineContent) {
        for line in propertyLines {
            if otherLineContent.propertyLines.find(line: line) == nil,
                let index = fileStringArray.index(of: line.toString(languageFormatter: languageFormatter)) {
                fileLines[index].isOptional = true
            }
        }
    }
    
    /// Determines if the type needs to be updated. Depending on the parsing and the JSON, the system can read 0 as a bool / int or double. Another API endpoint can offer greater clarity of the value. In the instance that the value can also be a double (1.30), then the type needs to be updated from bool to double.
    ///
    /// - Parameters:
    ///   - property: Property to check against and search for.
    ///   - type: Type to compare.
    /// - Returns: If the type was updated according to priority.
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
