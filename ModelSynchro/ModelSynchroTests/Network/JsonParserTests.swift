//
//  JsonParserTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest

class JsonParserTests: XCTestCase {

    var sut: JsonParser!
    var modelDataSource: FakeModelDataSource!

    override func setUp() {
        super.setUp()

        let config = ConfigurationFile(authorName: "Author",
                                       companyName: "Company",
                                       projectName: "MyCoolProject",
                                       language: "Swift",
                                       outputDirectory: "/somewhere",
                                       endpoints: [],
                                       headers: nil,
                                       authEndpoint: nil)
        modelDataSource = FakeModelDataSource()
        sut = JsonParser(config: config, modelDataSource: modelDataSource)
    }

    func testParse_String() {
        let json = ["sampleModel" : "Value"]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "String")
    }

    func testParse_Int() {
        let json = ["sampleModel" : -1]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "Int")
    }

    func testParse_Double() {
        let json = ["sampleModel" : 1.01]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "Double")
    }

    func testParse_Bool() {
        let json = ["sampleModel" : true]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "Bool")
    }

    func testParse_Array() {
        let json = ["sampleModel" : ["Hello", "World"]]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "[String]")
    }

    func testParse_Custom() {
        let json = ["sampleModel" : ["Custom" : "CustomValue"]]

        sut.parse(json: json, modelName: "MyModel")

        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "SampleModel")
    }

    //    func testParse_ArrayMixed() {
    //        let json = ["sampleModel" : ["Hello", 9]]
    //
    //        sut.parse(json: json, modelName: "MyModel")
    //
    //        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.property, "sampleModel")
    //        XCTAssertEqual(modelDataSource.fakeGenerator.lastAddCall.type, "[Any]")
    //    }

}


class FakeModelDataSource: ModelDataSourceProtocol {

    var modelDict = [String : ModelGeneratorProtocol]()
    var fakeGenerator = FakeModelGenerator()

    func modelGenerator(modelName: String) -> ModelGeneratorProtocol {
        return fakeGenerator
    }
}

class FakeModelGenerator: ModelGeneratorProtocol {

    var source: GeneratorDataSource {
        return GeneratorDataSource(languageFormatter: SwiftLanguageFormatter())
    }

    var incrementIterationWasCalled = false
    var writeToFileWasCalled = false
    var lastAddCall = (property: "", type: "")

    func add(property: String, type: String) {
        lastAddCall = (property, type)
    }

    func incrementIteration() {
        incrementIterationWasCalled = true
    }
    
    func writeToFile() {
        writeToFileWasCalled = true
    }
}
