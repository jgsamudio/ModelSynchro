//
//  GeneratorDataSourceTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest
@testable import ModelSynchroLibrary

class GeneratorDataSourceTests: XCTestCase {

    var sut: GeneratorDataSource!
    var languageFormatter: LanguageFormatter!
    var config: ConfigurationFile!

    override func setUp() {
        super.setUp()

        config = ConfigurationFile(authorName: "Author",
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

        languageFormatter = SwiftLanguageFormatter()
        sut = GeneratorDataSource(languageFormatter: languageFormatter)
    }

    func testFileText_Formatter() {
        sut.contents = [LineContent(iteration: 1, languageFormatter: languageFormatter)]

        var fileLines = [String]()
        fileLines.append(languageFormatter.fileHeader(name: "Sample",
                                                      config: config,
                                                      propertyLines: sut.contents.map { $0.propertyLines }.flatMap { $0 },
                                                      directoryData: nil))
        
        fileLines.append(languageFormatter.modelClassDeclaration(name: "Sample"))
        fileLines += sut.allLines.sorted { $0 < $1 }
        
        if let lines = languageFormatter.keyMapping(lines: sut.contents.map { $0.fileLines }.flatMap { $0 }) {
            fileLines.append(lines)
        }
        
        fileLines.append(languageFormatter.modelClassEndLine)
        let expected = fileLines.joined(separator: "\n")

        let result = sut.fileText(name: "Sample", config: config, directoryData: nil)

        XCTAssertEqual(result, expected)
    }

    // MARK: incrementModelIteration

    func testIncrementModelIteration_Single() {
        let lineContent = FakeLineContent(iteration: 1, languageFormatter: languageFormatter)
        sut.contents = [lineContent]
        let contentsLineCount = sut.contents.count

        sut.incrementModelIteration()

        XCTAssertEqual(sut.currentIteration, 2)
        XCTAssertEqual(sut.contents.count, contentsLineCount + 1)
        XCTAssertFalse(lineContent.checkOptionalWasCalled)
    }

    func testIncrementModelIteration_Multiple() {
        let lineContent = FakeLineContent(iteration: 1, languageFormatter: languageFormatter)
        let lineContent2 = FakeLineContent(iteration: 2, languageFormatter: languageFormatter)
        sut.contents = [lineContent, lineContent2]
        let contentsLineCount = sut.contents.count

        sut.incrementModelIteration()

        XCTAssertEqual(sut.currentIteration, 2)
        XCTAssertEqual(sut.contents.count, contentsLineCount + 1)
        XCTAssertTrue(lineContent.checkOptionalWasCalled)
        XCTAssertFalse(lineContent2.checkOptionalWasCalled)
    }

    // MARK: appendContent

    func testAppendContent() {
        let line = Line(property: "Property", type: "Type", isOptional: false, customProperty: nil)

        sut.appendContent(line: line)
        let result = sut.currentLineContent.fileLines.contains(line)

        XCTAssertTrue(result)
    }

    // MARK: appendProperty

    func testAppendProperty() {
        let line = Line(property: "Property", type: "Type", isOptional: false, customProperty: nil)

        sut.appendProperty(line: line)
        let result = sut.currentLineContent.propertyLines.contains(line)

        XCTAssertTrue(result)
    }
}
