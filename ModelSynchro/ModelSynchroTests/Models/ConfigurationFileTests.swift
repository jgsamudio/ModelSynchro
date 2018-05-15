//
//  ConfigurationFileTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 5/15/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest

class ConfigurationFileTests: XCTestCase {

    var sut: ConfigurationFile!

    func testMappedJsonKey_NilMappings() {
        let key = "jsonKey"
        sut = ConfigurationFile(authorName: "Author",
                                companyName: "Company",
                                projectName: "MyCoolProject",
                                language: "Swift",
                                outputDirectory: "/somewhere",
                                endpoints: [],
                                headers: nil,
                                authEndpoint: nil,
                                localJSONDirectory: nil,
                                mappedModelNames: nil)

        let result = sut.mapped(jsonKey: key)

        XCTAssertEqual(result, key)
    }

    func testMappedJsonKey_NotFound() {
        let key = "jsonKey"
        let mappedModelInfo = MappedModelInfo(jsonKey: "OtherJsonKey", fileName: nil, mappedName: "MappedName")
        sut = ConfigurationFile(authorName: "Author",
                                companyName: "Company",
                                projectName: "MyCoolProject",
                                language: "Swift",
                                outputDirectory: "/somewhere",
                                endpoints: [],
                                headers: nil,
                                authEndpoint: nil,
                                localJSONDirectory: nil,
                                mappedModelNames: [mappedModelInfo])

        let result = sut.mapped(jsonKey: key)

        XCTAssertEqual(result, key)
    }

    func testMappedJsonKey_Found() {
        let key = "jsonKey"
        let mappedModelInfo = MappedModelInfo(jsonKey: key, fileName: nil, mappedName: "MappedName")
        sut = ConfigurationFile(authorName: "Author",
                                companyName: "Company",
                                projectName: "MyCoolProject",
                                language: "Swift",
                                outputDirectory: "/somewhere",
                                endpoints: [],
                                headers: nil,
                                authEndpoint: nil,
                                localJSONDirectory: nil,
                                mappedModelNames: [mappedModelInfo])

        let result = sut.mapped(jsonKey: key)

        XCTAssertEqual(result, mappedModelInfo.mappedName)
    }

    func testMappedFileName_NilMappings() {
        let fileName = "fileName"
        sut = ConfigurationFile(authorName: "Author",
                                companyName: "Company",
                                projectName: "MyCoolProject",
                                language: "Swift",
                                outputDirectory: "/somewhere",
                                endpoints: [],
                                headers: nil,
                                authEndpoint: nil,
                                localJSONDirectory: nil,
                                mappedModelNames: nil)

        let result = sut.mapped(filename: fileName)

        XCTAssertEqual(result, fileName)
    }

    func testMappedFileName_NotFound() {
        let fileName = "fileName"
        let mappedModelInfo = MappedModelInfo(jsonKey: nil, fileName: "OtherFileName", mappedName: "MappedName")
        sut = ConfigurationFile(authorName: "Author",
                                companyName: "Company",
                                projectName: "MyCoolProject",
                                language: "Swift",
                                outputDirectory: "/somewhere",
                                endpoints: [],
                                headers: nil,
                                authEndpoint: nil,
                                localJSONDirectory: nil,
                                mappedModelNames: [mappedModelInfo])

        let result = sut.mapped(filename: fileName)

        XCTAssertEqual(result, fileName)
    }

    func testMappedFileName_Found() {
        let fileName = "fileName"
        let mappedModelInfo = MappedModelInfo(jsonKey: nil, fileName: fileName, mappedName: "MappedName")
        sut = ConfigurationFile(authorName: "Author",
                                companyName: "Company",
                                projectName: "MyCoolProject",
                                language: "Swift",
                                outputDirectory: "/somewhere",
                                endpoints: [],
                                headers: nil,
                                authEndpoint: nil,
                                localJSONDirectory: nil,
                                mappedModelNames: [mappedModelInfo])

        let result = sut.mapped(filename: fileName)

        XCTAssertEqual(result, mappedModelInfo.mappedName)
    }

}
