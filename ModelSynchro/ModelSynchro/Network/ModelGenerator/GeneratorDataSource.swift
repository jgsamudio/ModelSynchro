//
//  GeneratorDataSource.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

final class GeneratorDataSource {
    
    var contents: [LineContent]
    var currentIteration: Int = 1
    
    var currentLineContent: LineContent {
        get {
            return contents[currentIteration - 1]
        } set {
            contents[currentIteration - 1] = newValue
        }
    }
    
    var allLines: [String] {
        return contents.map{ $0.fileStringArray }.flatMap { $0 }
    }
    
    private var languageFormatter: LanguageFormatter
    
    init(languageFormatter: LanguageFormatter) {
        self.languageFormatter = languageFormatter
        contents = [LineContent(iteration: currentIteration, languageFormatter: languageFormatter)]
    }
    
    func fileText(name: String, config: ConfigurationFile) -> String {
        var fileLines = [String]()
        fileLines.append(languageFormatter.fileHeader(name: name, config: config))
        fileLines.append(languageFormatter.modelClassDeclaration(name: name))
        fileLines += allLines.sorted { $0 < $1 }
        fileLines.append(languageFormatter.modelClassEndLine)
        
        return fileLines.joined(separator: "\n")
    }
    
    func incrementModelIteration() {
        updateModelOptionals()
        currentIteration += 1
        contents.append(LineContent(iteration: currentIteration, languageFormatter: languageFormatter))
    }
    
    func appendContent(line: Line) {
        currentLineContent.fileLines.append(line)
    }
}

private extension GeneratorDataSource {
    
    func updateModelOptionals() {
        guard contents.count > 1 else {
            return
        }
        
        for index in 0..<contents.count {
            let content = contents[index]
            if content.iteration != contents.last?.iteration {
                content.checkOptional(otherLineContent: contents[index+1])
            }
            
            // Remember the index
            var lineDict = [String : Line]()
            
            let fileStringArray = content.fileStringArray
            
            for fileLine in content.fileLines {
                if lineDict[fileLine.property] == nil {
                    lineDict[fileLine.property] = fileLine
                } else {
                    
                    let oldLine = lineDict[fileLine.property]
                    
                    if let index = fileStringArray.index(of: oldLine!.toString(languageFormatter: languageFormatter)) {
                        content.fileLines.remove(at: index)
                    }
                    
                    lineDict[fileLine.property]?.type = typePriority(currentType: oldLine!.type, newType: fileLine.type)
                    
                    // Update file line array
                    
                    if let index = fileStringArray.index(of: fileLine.toString(languageFormatter: languageFormatter)) {
                        content.fileLines[index].type = typePriority(currentType: oldLine!.type, newType: fileLine.type)
                    }
                    
                }
            }
        }
    }
    
    func typePriority(currentType: String, newType: String) -> String {
        guard let lhsType = PriorityType.priorityType(rawValue: currentType),
            let rhsType = PriorityType.priorityType(rawValue: newType) else {
                return currentType
        }
        return lhsType.comparePriority(type: rhsType) ?? currentType
    }
}
