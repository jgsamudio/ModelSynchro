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
        return contents.map{ $0.fileLines }.flatMap { $0 }
    }
    
    private var languageFormatter: LanguageFormatter
    
    init(languageFormatter: LanguageFormatter) {
        self.languageFormatter = languageFormatter
        contents = [LineContent(iteration: currentIteration)]
    }
    
    func fileText(name: String, config: ConfigurationFile) -> String {
        var alphabetizedLines = [String]()
        alphabetizedLines.append(languageFormatter.fileHeader(name: name, config: config))
        alphabetizedLines.append(languageFormatter.modelClassDeclaration(name: name))
        alphabetizedLines += allLines.sorted { $0 < $1 }
        alphabetizedLines.append(languageFormatter.modelClassEndLine)
        
        return alphabetizedLines.joined(separator: "\n")
    }
    
    func incrementModelIteration() {
        updateModelOptionals()
        currentIteration += 1
        contents.append(LineContent(iteration: currentIteration))
    }
    
    func appendContent(line: String) {
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
        }
    }
}
