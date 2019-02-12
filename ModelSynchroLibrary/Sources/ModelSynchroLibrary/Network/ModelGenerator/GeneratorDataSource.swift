//
//  GeneratorDataSource.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

final class GeneratorDataSource: GeneratorDataSourceProtocol {
    
    // MARK: - Public Properties
    
    var contents: [LineContent]
    var currentIteration: Int = 1
    
    // MARK: - Private Properties
    
    private var languageFormatter: LanguageFormatter
    
    // MARK: - Initialization
    
    init(languageFormatter: LanguageFormatter) {
        self.languageFormatter = languageFormatter
        contents = [LineContent(iteration: currentIteration, languageFormatter: languageFormatter)]
    }
    
    // MARK: - Public Functions
    
    func fileText(name: String, config: ConfigurationFile, directoryData: DirectoryData?) -> String {
        return fileString(name: name,
                          config: config,
                          languageFormatter: languageFormatter,
                          lines: allLines,
                          directoryData: directoryData)
    }

    func headerFileText(name: String, config: ConfigurationFile, directoryData: DirectoryData?) -> String {
        guard let languageFormatter = languageFormatter.headerLanguageFormatter else {
            return ""
        }
        return fileString(name: name,
                          config: config,
                          languageFormatter: languageFormatter,
                          lines: allHeaderLines,
                          directoryData: directoryData)
    }
    
    func incrementModelIteration() {
        updateModelOptionals()
        currentIteration += 1
        contents.append(LineContent(iteration: currentIteration, languageFormatter: languageFormatter))
    }
    
    func appendContent(line: Line) {
        currentLineContent.fileLines.append(line)
    }

    func appendProperty(line: Line) {
        currentLineContent.propertyLines.append(line)
    }
}

// MARK: - Private Functions
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

    func fileString(name: String,
                    config: ConfigurationFile,
                    languageFormatter: LanguageFormatter,
                    lines: [String],
                    directoryData: DirectoryData?) -> String {
        
        var fileLines = [String]()
        fileLines.append(languageFormatter.fileHeader(name: name,
                                                      config: config,
                                                      propertyLines: contents.map { $0.fileLines }.flatMap { $0 },
                                                      directoryData: directoryData))
        
        fileLines.append(languageFormatter.modelClassDeclaration(name: name))
        fileLines += lines
        
        if let keyMapping = languageFormatter.keyMapping(lines: contents.map { $0.fileLines }.flatMap { $0 }) {
            fileLines.append(keyMapping)
        }
        
        fileLines.append(languageFormatter.modelClassEndLine)

        return fileLines.joined(separator: "\n")
    }
    
    func modelFileString() {
        
    }
}
