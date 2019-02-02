//
//  ModelGeneratorTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest
@testable import ModelSynchroLibrary

class ModelGeneratorTests: XCTestCase {

    // MARK: - Public Properties
    
    var sut: ModelGenerator!
    var generatorDataSource: FakeGeneratorDataSource!

    // MARK: - Public Functions
    
    override func setUp() {
        super.setUp()

        let config = ConfigurationFile(authorName: "Author",
                                       companyName: "Company",
                                       projectName: "MyCoolProject",
                                       language: Language.swift,
                                       verbose: false,
                                       serverAPIInfo: ServerAPIInfo(outputDirectory: "/somewhere",
                                                                    endpoints: nil,
                                                                    headers: nil,
                                                                    authEndpoint: nil,
                                                                    outputPackage: nil,
                                                                    baseUrl: nil),
                                       localJSONDirectory: nil,
                                       mappedModelNames: nil)

        generatorDataSource = FakeGeneratorDataSource()
        sut = ModelGenerator(name: "MyModel", config: config, dataSource: generatorDataSource)
    }

    // MARK: add

    func testAdd_FirstAdd() {
        generatorDataSource.fakeContents.forEach { $0.shouldUpdatePriority = false }

        sut.add(property: "Property", type: "Type")

        XCTAssertTrue(generatorDataSource.appendContentWasCalled)
        XCTAssertTrue(generatorDataSource.appendPropertyWasCalled)
    }

    func testAdd_FoundNonOptional() {
        generatorDataSource.fakeContents.forEach { $0.shouldUpdatePriority = false }
        let line = Line(property: "Property", type: "Type", isOptional: false, customProperty: nil)
        generatorDataSource.currentLineContent.fileLines.append(line)

        sut.add(property: "Property", type: "Type")

        XCTAssertFalse(generatorDataSource.appendContentWasCalled)
        XCTAssertTrue(generatorDataSource.appendPropertyWasCalled)
    }

    func testAdd_FoundOptional() {
        generatorDataSource.fakeContents.forEach { $0.shouldUpdatePriority = false }
        let line = Line(property: "Property", type: "Type", isOptional: true, customProperty: nil)
        generatorDataSource.currentLineContent.fileLines.append(line)
        
        sut.add(property: "Property", type: "Type")

        XCTAssertFalse(generatorDataSource.appendContentWasCalled)
        XCTAssertTrue(generatorDataSource.appendPropertyWasCalled)
    }

    func testAdd_FoundNonOptionalPriorityUpdated() {
        generatorDataSource.fakeContents.forEach { $0.shouldUpdatePriority = true }
        let line = Line(property: "Property", type: "Type", isOptional: false, customProperty: nil)
        generatorDataSource.currentLineContent.fileLines.append(line)

        sut.add(property: "Property", type: "Type")

        XCTAssertFalse(generatorDataSource.appendContentWasCalled)
        XCTAssertTrue(generatorDataSource.appendPropertyWasCalled)
    }

    func testAdd_FoundOptionalPriorityUpdated() {
        generatorDataSource.fakeContents.forEach { $0.shouldUpdatePriority = true }
        let line = Line(property: "Property", type: "Type", isOptional: true, customProperty: nil)
        generatorDataSource.currentLineContent.fileLines.append(line)

        sut.add(property: "Property", type: "Type")

        XCTAssertFalse(generatorDataSource.appendContentWasCalled)
        XCTAssertTrue(generatorDataSource.appendPropertyWasCalled)
    }

    func testAdd_NotFoundPriorityUpdated() {
        generatorDataSource.fakeContents.forEach { $0.shouldUpdatePriority = true }
        let line = Line(property: "Property", type: "Type", isOptional: false, customProperty: nil)
        generatorDataSource.currentLineContent.fileLines.append(line)

        sut.add(property: "Property", type: "Type2")

        XCTAssertFalse(generatorDataSource.appendContentWasCalled)
        XCTAssertTrue(generatorDataSource.appendPropertyWasCalled)
    }

    // MARK: incrementIteration

    func testIncrementIteration() {
        sut.incrementIteration()

        XCTAssertTrue(generatorDataSource.incrementModelIterationWasCalled)
    }

    // MARK: writeToFile

    func testWriteToFile_NoHeader() {

        sut.writeToFile()

        XCTAssertTrue(generatorDataSource.fileTextWasCalled)
    }

    func testWriteToFile_Header() {
        let config = ConfigurationFile(authorName: "Author",
                                       companyName: "Company",
                                       projectName: "MyCoolProject",
                                       language: Language.objectiveC,
                                       verbose: false,
                                       serverAPIInfo: ServerAPIInfo(outputDirectory: "/somewhere",
                                                                    endpoints: nil,
                                                                    headers: nil,
                                                                    authEndpoint: nil,
                                                                    outputPackage: nil,
                                                                    baseUrl: nil),
                                       localJSONDirectory: nil,
                                       mappedModelNames: nil)

        generatorDataSource = FakeGeneratorDataSource()
        sut = ModelGenerator(name: "MyModel", config: config, dataSource: generatorDataSource)

        sut.writeToFile()

        XCTAssertTrue(generatorDataSource.fileTextWasCalled)
        XCTAssertTrue(generatorDataSource.headerFileTextWasCalled)
    }
}
