//
//  ConfigurationFileTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 5/15/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest
@testable import ModelSynchroLibrary

class ConfigurationFileTests: XCTestCase {

    // MARK: - Public Properties
    
    var sut: ConfigurationFile!

    // MARK: - outputPath: String

    // MARK: - Public Functions
    
    func testOutputPath_Nil() {
        ConfigurationFile.projectDirectory = "projectDirectory"
        sut = configFile()

        let result = sut.outputModelPath

        XCTAssertEqual(result, ConfigurationFile.projectDirectory)
    }

    func testOutputPath_NonNil() {
        let outputDirectory = "/somewhere"
        ConfigurationFile.projectDirectory = "projectDirectory"
        sut = configFile(outputDirectory: outputDirectory)

        let result = sut.outputModelPath

        XCTAssertEqual(result, ConfigurationFile.projectDirectory + outputDirectory)
    }

    // MARK: - localPath(directory: String) -> String

    func testLocalPath_EmptyDirectory() {
        ConfigurationFile.projectDirectory = "projectDirectory"
        sut = configFile()

        let result = sut.localPath(directory: "")

        XCTAssertEqual(result, ConfigurationFile.projectDirectory)
    }

    func testLocalPath_NonEmptyDirectory() {
        ConfigurationFile.projectDirectory = "projectDirectory"
        sut = configFile()

        let result = sut.localPath(directory: "something")

        XCTAssertEqual(result, ConfigurationFile.projectDirectory + "something")
    }

    // MARK: - mapped(jsonKey: String) -> String

    func testMappedJsonKey_NilMappings() {
        let key = "jsonKey"
        sut = configFile()

        let result = sut.mapped(jsonKey: key)

        XCTAssertEqual(result, key)
    }

    func testMappedJsonKey_NotFound() {
        let key = "jsonKey"
        let mappedModelInfo = MappedModelInfo(jsonKey: "OtherJsonKey", fileName: nil, mappedName: "MappedName")
        sut = configFile(mappedModelNames: [mappedModelInfo])
        
        let result = sut.mapped(jsonKey: key)

        XCTAssertEqual(result, key)
    }

    func testMappedJsonKey_Found() {
        let key = "jsonKey"
        let mappedModelInfo = MappedModelInfo(jsonKey: key, fileName: nil, mappedName: "MappedName")
        sut = configFile(mappedModelNames: [mappedModelInfo])

        let result = sut.mapped(jsonKey: key)

        XCTAssertEqual(result, mappedModelInfo.mappedName)
    }

    // MARK: mapped(filename: String) -> String

    func testMappedFileName_NilMappings() {
        let fileName = "fileName"
        sut = configFile()

        let result = sut.mapped(filename: fileName)

        XCTAssertEqual(result, fileName)
    }

    func testMappedFileName_NotFound() {
        let fileName = "fileName"
        let mappedModelInfo = MappedModelInfo(jsonKey: nil, fileName: "OtherFileName", mappedName: "MappedName")
        sut = configFile(mappedModelNames: [mappedModelInfo])

        let result = sut.mapped(filename: fileName)

        XCTAssertEqual(result, fileName)
    }

    func testMappedFileName_Found() {
        let fileName = "fileName"
        let mappedModelInfo = MappedModelInfo(jsonKey: nil, fileName: fileName, mappedName: "MappedName")
        sut = configFile(mappedModelNames: [mappedModelInfo])

        let result = sut.mapped(filename: fileName)

        XCTAssertEqual(result, mappedModelInfo.mappedName)
    }

}

extension ConfigurationFileTests {
    
    func configFile(language: Language = .swift,
                    outputDirectory: String = "",
                    mappedModelNames: [MappedModelInfo]? = nil) -> ConfigurationFile {
        return ConfigurationFile(authorName: "Author",
                                 companyName: "Company",
                                 projectName: "MyCoolProject",
                                 language: language,
                                 verbose: false,
                                 directoryInfo: DirectoryInfo(outputModelDirectory: outputDirectory,
                                                              outputApiDirectory: "",
                                                              outputModelPackage: "",
                                                              outputApiPackage: "",
                                                              localJSONDirectory: nil),
                                 serverAPIInfo: ServerAPIInfo(apis: nil,
                                                              headers: nil,
                                                              authEndpoint: nil,
                                                              baseUrl: nil),
                                 mappedModelNames: mappedModelNames)
    }
}
