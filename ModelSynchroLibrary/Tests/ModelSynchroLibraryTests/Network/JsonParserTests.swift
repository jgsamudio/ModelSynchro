//
//  JsonParserTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest
@testable import ModelSynchroLibrary

class JsonParserTests: XCTestCase {

    // MARK: - Public Properties
    
    var sut: JsonParser!
    var modelDataSource: FakeModelDataSource!

    // MARK: - Public Functions
    
    override func setUp() {
        super.setUp()

        let config = ConfigurationFile(authorName: "Author",
                                       companyName: "Company",
                                       projectName: "MyCoolProject",
                                       language: Language.swift,
                                       verbose: false,
                                       namingConventions: nil,
                                       directoryInfo: DirectoryInfo(outputModelDirectory: "",
                                                                    outputApiDirectory: "",
                                                                    outputModelPackage: "",
                                                                    outputApiPackage: "",
                                                                    templateDirectory: "",
                                                                    localJSONDirectory: nil,
                                                                    openApiJsonDirectory: nil),
                                       serverAPIInfo: ServerAPIInfo(apis: nil,
                                                                    headers: nil,
                                                                    authEndpoint: nil,
                                                                    baseUrl: nil),
                                       mappedModelNames: nil)

        modelDataSource = FakeModelDataSource()
        sut = JsonParser(config: config, modelDataSource: modelDataSource)
    }

    func testParse_String() {
        let json = ["sampleModel" : "Value"]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "String")
    }

    func testParse_Int() {
        let json = ["sampleModel" : -1]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "Int")
    }

    func testParse_Double() {
        let json = ["sampleModel" : 1.01]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "Double")
    }

    func testParse_Bool() {
        let json = ["sampleModel" : true]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "Bool")
    }

    func testParse_Custom() {
        let json = ["sampleModel" : ["Custom" : "CustomValue"]]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "SampleModel")
    }

    func testParse_Nil() {
        let json = ["sampleModel" : [3 : nil]]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertFalse(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "")
    }

    // MARK: Parse Array Type

    func testParse_ArrayString() {
        let json = ["sampleModel" : ["World"]]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "[String]")
    }

    func testParse_ArrayInt() {
        let json = ["sampleModel" : [9]]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "[Int]")
    }

    func testParse_ArrayBool() {
        let json = ["sampleModel" : [true]]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "[Bool]")
    }

    func testParse_ArrayDouble() {
        let json = ["sampleModel" : [1.01]]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "[Double]")
    }

    func testParse_ArrayCustom() {
        let json = ["sampleModel" : [ ["CustomObject": "Value"] ]]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "[SampleModel]")
    }

    func testParse_ArrayMultiple() {
        let json = ["sampleModel" : ["Hello", "World"]]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "[String]")
    }

    func testParse_ArrayEmpty() {
        let json = ["sampleModel" : []]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertTrue(modelDataSource.modelGeneratorWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.addWasCalled)
        XCTAssertTrue(modelDataSource.fakeGenerator.incrementIterationWasCalled)
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "[SampleModel]")
    }

    // TODO: Handle Array Mixed Cases

    //    func testParse_ArrayMixed() {
    //        let json = ["sampleModel" : ["Hello", 9]]
    //
    //        sut.parse(json: json, modelName: "MyModel")
    //
    //        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
    //        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "[Any]")
    //    }

    // MARK: writeModelsToFile

    func testWriteModelsToFile_Model() {
        let json = ["sampleModel" : [3 : nil]]
        sut.parse(json: json, modelName: "MyModel")

        sut.writeModelsToFile()

        XCTAssertTrue(modelDataSource.fakeGenerator.writeToFileWasCalled)
    }

    func testWriteModelsToFile_Empty() {
        sut.writeModelsToFile()

        XCTAssertFalse(modelDataSource.fakeGenerator.writeToFileWasCalled)
    }
}
