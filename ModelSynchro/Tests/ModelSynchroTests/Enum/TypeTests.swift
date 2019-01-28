//
//  TypeTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/2/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest
@testable import ModelSynchro

class TypeTests: XCTestCase {

    var formatter: LanguageFormatter!

    override func setUp() {
        super.setUp()
        formatter = SwiftLanguageFormatter()
    }


    func testToString_Int() {
        let result = Type.int.toString(formatter: formatter)

        XCTAssertEqual(result, formatter.int)
    }

    func testToString_String() {
        let result = Type.string.toString(formatter: formatter)

        XCTAssertEqual(result, formatter.string)
    }

    func testToString_Bool() {
        let result = Type.bool.toString(formatter: formatter)

        XCTAssertEqual(result, formatter.bool)
    }

    func testToString_Double() {
        let result = Type.double.toString(formatter: formatter)

        XCTAssertEqual(result, formatter.double)
    }

    func testToString_Array() {
        let type = "CustomType"
        let result = Type.array(type).toString(formatter: formatter)

        XCTAssertEqual(result, formatter.arrayFormat(type: type))
    }

    func testToString_Custom() {
        let type = "CustomType"
        let result = Type.custom(type).toString(formatter: formatter)

        XCTAssertEqual(result, formatter.customFormat(type: type))
    }

    // MARK: isPrimitiveType

    func testIsPrimitiveType_ValidInt() {
        let result = Type.int.isPrimitiveType

        XCTAssertTrue(result)
    }

    func testIsPrimitiveType_ValidDouble() {
        let result = Type.double.isPrimitiveType

        XCTAssertTrue(result)
    }

    func testIsPrimitiveType_ValidBool() {
        let result = Type.bool.isPrimitiveType

        XCTAssertTrue(result)
    }

    func testIsPrimitiveType_ValidString() {
        let result = Type.string.isPrimitiveType

        XCTAssertTrue(result)
    }

    func testIsPrimitiveType_InValidArray() {
        let result = Type.array("Type").isPrimitiveType

        XCTAssertFalse(result)
    }

    func testIsPrimitiveType_InValidCustom() {
        let result = Type.custom("Type").isPrimitiveType

        XCTAssertFalse(result)
    }
}
