//
//  GeneratorDataSourceProtocol.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

protocol GeneratorDataSourceProtocol {
    var contents: [LineContent] { get set }
    var currentIteration: Int { get set }
    var currentLineContent: LineContent { get set }

    var allLines: [String] { get }
    var allHeaderLines: [String] { get }

    func fileText(name: String, config: ConfigurationFile, directoryData: DirectoryData?) -> String
    func headerFileText(name: String, config: ConfigurationFile, directoryData: DirectoryData?) -> String
    
    func incrementModelIteration()
    func appendContent(line: Line)
    func appendProperty(line: Line)
}

extension GeneratorDataSourceProtocol {

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

    var allHeaderLines: [String] {
        return contents.map{ $0.headerFileStringArray }.flatMap { $0 }
    }
}
