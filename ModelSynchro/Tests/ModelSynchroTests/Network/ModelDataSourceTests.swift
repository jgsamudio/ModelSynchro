//
//  ModelDataSourceTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/2/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest
@testable import ModelSynchro

class ModelDataSourceTests: XCTestCase {

    var sut: ModelDataSource!
    
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

        sut = ModelDataSource(config: config, currentModels: [:])
    }


    func testModelGenerator_ModelNameNotFound() {
        let modelName = "Name"

        let _ = sut.modelGenerator(modelName: modelName)

        XCTAssertNotNil(sut.modelDict[modelName])
    }

    func testModelGenerator_ModelNameFound() {
        let modelName = "Name"
        let existingGenerator = sut.modelGenerator(modelName: modelName)
        existingGenerator.add(property: "SomeProperty", type: "SomeType")

        let _ = sut.modelGenerator(modelName: modelName)

        XCTAssertEqual(sut.modelDict[modelName]?.source.contents.count, existingGenerator.source.contents.count)
    }
}
