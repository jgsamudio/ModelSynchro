//
//  LineContentTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest
@testable import ModelSynchroLibrary

class LineContentTests: XCTestCase {

    // MARK: - Public Properties
    
    var sut: LineContent!
    var languageFormatter: LanguageFormatter!

    // MARK: - Public Functions
    
    override func setUp() {
        super.setUp()

        languageFormatter = SwiftLanguageFormatter()
        sut = LineContent(iteration: 1, languageFormatter: languageFormatter)
    }

    // MARK: checkOptional

    func testCheckOptional_NotFound() {
        let line = Line(property: "Property", type: "Type", isOptional: false, customProperty: nil)
        sut.propertyLines = [line]
        sut.fileLines = [line]

        sut.checkOptional(otherLineContent: LineContent(iteration: 2, languageFormatter: languageFormatter))

        XCTAssertTrue(sut.fileLines.first?.isOptional ?? false)
    }

    func testCheckOptional_Found() {
        let line = Line(property: "Property", type: "Type", isOptional: false, customProperty: nil)
        sut.propertyLines = [line]
        sut.fileLines = [line]

        let lineContent = LineContent(iteration: 2, languageFormatter: languageFormatter)
        lineContent.propertyLines = [line]
        lineContent.fileLines = [line]

        sut.checkOptional(otherLineContent: lineContent)

        XCTAssertFalse(sut.fileLines.first?.isOptional ?? true)
    }

    // MARK: updatePriorityType

    func testUpdatePriorityType_Empty() {

        let result = sut.updatePriorityType(property: "Property", type: "Type")

        XCTAssertFalse(result)
    }

    func testUpdatePriorityType_SamePropertySameType() {
        let line = Line(property: "Property", type: "Type", isOptional: false, customProperty: nil)
        sut.propertyLines = [line]
        sut.fileLines = [line]

        let result = sut.updatePriorityType(property: "Property", type: "Type")

        XCTAssertFalse(result)
    }

    func testUpdatePriorityType_DifferentPropertySameType() {
        let line = Line(property: "AnotherProperty", type: "Type", isOptional: false, customProperty: nil)
        sut.propertyLines = [line]
        sut.fileLines = [line]

        let result = sut.updatePriorityType(property: "Property", type: "Type")

        XCTAssertFalse(result)
    }

    func testUpdatePriorityType_SamePropertyDifferentTypeNotUpdated() {
        let line = Line(property: "Property", type: "AnotherType", isOptional: false, customProperty: nil)
        sut.propertyLines = [line]
        sut.fileLines = [line]

        let result = sut.updatePriorityType(property: "Property", type: "Type")

        XCTAssertTrue(result)
        XCTAssertEqual(sut.fileLines.first?.type ?? "", "AnotherType")
        XCTAssertEqual(sut.propertyLines.first?.type ?? "", "AnotherType")
    }

    func testUpdatePriorityType_SamePropertyDifferentTypeUpdated() {
        let line = Line(property: "Property", type: "Bool", isOptional: false, customProperty: nil)
        sut.propertyLines = [line]
        sut.fileLines = [line]

        let result = sut.updatePriorityType(property: "Property", type: "Int")

        XCTAssertTrue(result)
        XCTAssertEqual(sut.fileLines.first?.type ?? "", "Int")
        XCTAssertEqual(sut.propertyLines.first?.type ?? "", "Int")
    }
}
