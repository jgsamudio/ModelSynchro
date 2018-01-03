//
//  FakeModelGenerator.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

class FakeModelGenerator: ModelGeneratorProtocol {

    var source: GeneratorDataSourceProtocol {
        return GeneratorDataSource(languageFormatter: SwiftLanguageFormatter())
    }

    var incrementIterationWasCalled = false
    var writeToFileWasCalled = false
    var lastAddCall = (property: "", type: "")
    var addWasCalled = false

    func add(property: String, type: String) {
        addWasCalled = true
        lastAddCall = (property, type)
    }

    func incrementIteration() {
        incrementIterationWasCalled = true
    }

    func writeToFile() {
        writeToFileWasCalled = true
    }
}
