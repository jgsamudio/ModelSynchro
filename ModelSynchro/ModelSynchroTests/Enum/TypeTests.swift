//
//  TypeTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/2/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest

class TypeTests: XCTestCase {

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
