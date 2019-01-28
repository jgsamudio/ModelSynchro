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

    // MARK: - outputPath: String

    func testOutputPath_Nil() {
        ConfigurationParser.projectDirectory = "projectDirectory"
        sut = ConfigurationFile(authorName: "Author",
                                companyName: "Company",
                                projectName: "MyCoolProject",
                                language: Language.swift,
                                verbose: false,
                                serverAPIInfo: nil,
                                localJSONDirectory: nil,
                                mappedModelNames: nil)

        let result = sut.outputPath

        XCTAssertEqual(result, ConfigurationParser.projectDirectory)
    }

    func testOutputPath_NonNil() {
        let outputDirectory = "/somewhere"
        ConfigurationParser.projectDirectory = "projectDirectory"
        sut = ConfigurationFile(authorName: "Author",
                                companyName: "Company",
                                projectName: "MyCoolProject",
                                language: Language.swift,
                                verbose: false,
                                serverAPIInfo: ServerAPIInfo(outputDirectory: outputDirectory,
                                                             endpoints: nil,
                                                             headers: nil,
                                                             authEndpoint: nil,
                                                             outputPackage: nil,
                                                             baseUrl: nil),
                                localJSONDirectory: nil,
                                mappedModelNames: nil)

        let result = sut.outputPath

        XCTAssertEqual(result, ConfigurationParser.projectDirectory + outputDirectory)
    }

    // MARK: - localPath(directory: String) -> String

    func testLocalPath_EmptyDirectory() {
        ConfigurationParser.projectDirectory = "projectDirectory"
        sut = ConfigurationFile(authorName: "Author",
                                companyName: "Company",
                                projectName: "MyCoolProject",
                                language: Language.swift,
                                verbose: false,
                                serverAPIInfo: nil,
                                localJSONDirectory: nil,
                                mappedModelNames: nil)

        let result = sut.localPath(directory: "")

        XCTAssertEqual(result, ConfigurationParser.projectDirectory)
    }

    func testLocalPath_NonEmptyDirectory() {
        ConfigurationParser.projectDirectory = "projectDirectory"
        sut = ConfigurationFile(authorName: "Author",
                                companyName: "Company",
                                projectName: "MyCoolProject",
                                language: Language.swift,
                                verbose: false,
                                serverAPIInfo: nil,
                                localJSONDirectory: nil,
                                mappedModelNames: nil)

        let result = sut.localPath(directory: "something")

        XCTAssertEqual(result, ConfigurationParser.projectDirectory + "something")
    }

    // MARK: - mapped(jsonKey: String) -> String

    func testMappedJsonKey_NilMappings() {
        let key = "jsonKey"
        sut = ConfigurationFile(authorName: "Author",
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

        let result = sut.mapped(jsonKey: key)

        XCTAssertEqual(result, key)
    }

    func testMappedJsonKey_NotFound() {
        let key = "jsonKey"
        let mappedModelInfo = MappedModelInfo(jsonKey: "OtherJsonKey", fileName: nil, mappedName: "MappedName")
        sut = ConfigurationFile(authorName: "Author",
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
                                language: Language.swift,
                                verbose: false,
                                serverAPIInfo: ServerAPIInfo(outputDirectory: "/somewhere",
                                                             endpoints: nil,
                                                             headers: nil,
                                                             authEndpoint: nil,
                                                             outputPackage: nil,
                                                             baseUrl: nil),
                                localJSONDirectory: nil,
                                mappedModelNames: [mappedModelInfo])

        let result = sut.mapped(jsonKey: key)

        XCTAssertEqual(result, mappedModelInfo.mappedName)
    }

    // MARK: mapped(filename: String) -> String

    func testMappedFileName_NilMappings() {
        let fileName = "fileName"
        sut = ConfigurationFile(authorName: "Author",
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

        let result = sut.mapped(filename: fileName)

        XCTAssertEqual(result, fileName)
    }

    func testMappedFileName_NotFound() {
        let fileName = "fileName"
        let mappedModelInfo = MappedModelInfo(jsonKey: nil, fileName: "OtherFileName", mappedName: "MappedName")
        sut = ConfigurationFile(authorName: "Author",
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
                                language: Language.swift,
                                verbose: false,
                                serverAPIInfo: ServerAPIInfo(outputDirectory: "/somewhere",
                                                             endpoints: nil,
                                                             headers: nil,
                                                             authEndpoint: nil,
                                                             outputPackage: nil,
                                                             baseUrl: nil),
                                localJSONDirectory: nil,
                                mappedModelNames: [mappedModelInfo])

        let result = sut.mapped(filename: fileName)

        XCTAssertEqual(result, mappedModelInfo.mappedName)
    }

}
