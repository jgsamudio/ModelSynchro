//
//  FakeGeneratorDataSource.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation
@testable import ModelSynchroLibrary

class FakeGeneratorDataSource: GeneratorDataSourceProtocol {

    // MARK: - Public Properties
    
    var contents: [LineContent]
    var currentIteration: Int = 1

    var appendContentWasCalled = false
    var appendPropertyWasCalled = false
    var incrementModelIterationWasCalled = false
    var fileTextWasCalled = false
    var headerFileTextWasCalled = false

    var fakeContents: [FakeLineContent] {
        return contents.compactMap { $0 as? FakeLineContent }
    }

    // MARK: - Initialization
    
    init() {
        contents = [FakeLineContent(iteration: currentIteration, languageFormatter: SwiftLanguageFormatter())]
    }

    // MARK: - Public Functions
    
    func fileText(name: String, config: ConfigurationFile, directoryData: DirectoryData?) -> String {
        fileTextWasCalled = true
        return ""
    }

    func headerFileText(name: String, config: ConfigurationFile, directoryData: DirectoryData?) -> String {
        headerFileTextWasCalled = true
        return ""
    }

    func incrementModelIteration() {
        incrementModelIterationWasCalled = true
    }

    func appendContent(line: Line) {
        appendContentWasCalled = true
    }

    func appendProperty(line: Line) {
        appendPropertyWasCalled = true
    }
}
