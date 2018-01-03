//
//  PriorityTypeTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/2/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest

class PriorityTypeTests: XCTestCase {

    var sut: PriorityType!
    var formatter: LanguageFormatter!

    override func setUp() {
        super.setUp()
        sut = .bool
        formatter = SwiftLanguageFormatter()
    }

    func testComparePriority_Equal() {
        let result = sut.comparePriority(type: .bool, formatter: formatter)

        XCTAssertEqual(result, formatter.bool)
    }

    func testComparePriority_NotEqual() {
        let result = sut.comparePriority(type: .double, formatter: formatter)

        XCTAssertNotEqual(result, formatter.bool)
    }

    func testComparePriority_GreaterPriority() {
        let result = sut.comparePriority(type: .double, formatter: formatter)

        XCTAssertEqual(result, formatter.double)
    }

    func testComparePriority_LesserPriority() {
        sut = .double
        let result = sut.comparePriority(type: .bool, formatter: formatter)

        XCTAssertEqual(result, formatter.double)
    }

    // MARK: toString()

    func testToString_Int() {
        sut = .int

        let result = sut.toString(formatter: formatter)

        XCTAssertEqual(result, Type.int.toString(formatter: formatter))
    }

    func testToString_Bool() {
        let result = sut.toString(formatter: formatter)

        XCTAssertEqual(result, Type.bool.toString(formatter: formatter))
    }

    func testToString_Double() {
        sut = .double

        let result = sut.toString(formatter: formatter)

        XCTAssertEqual(result, Type.double.toString(formatter: formatter))
    }

    // MARK: priorityType

    func testPriorityType_Int() {
        let type = PriorityType.priorityType(rawValue: formatter.int, formatter: formatter)

        XCTAssertEqual(type, .int)
    }

    func testPriorityType_Bool() {
        let type = PriorityType.priorityType(rawValue: formatter.bool, formatter: formatter)

        XCTAssertEqual(type, .bool)
    }

    func testPriorityType_Double() {
        let type = PriorityType.priorityType(rawValue: formatter.double, formatter: formatter)

        XCTAssertEqual(type, .double)
    }

    func testPriorityType_RandomRaw() {
        let type = PriorityType.priorityType(rawValue: "Random Raw", formatter: formatter)

        XCTAssertNil(type)
    }
}
