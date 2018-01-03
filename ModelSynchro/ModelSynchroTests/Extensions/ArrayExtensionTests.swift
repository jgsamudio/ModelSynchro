//
//  ArrayExtensionTests.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/2/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import XCTest

@testable import ModelSynchro
class ArrayExtensionTests: XCTestCase {

    // MARK: Line

    func testLineArrayFind_Found() {
        let array = [Line(property: "Sample", type: "Type", isOptional: false, customProperty: nil)]
        let line = Line(property: "Sample", type: "Type", isOptional: false, customProperty: nil)

        let foundLine = array.find(line: line)

        XCTAssertEqual(line, foundLine)
    }

    func testLineArrayFind_NotFoundType() {
        let array = [Line(property: "Sample", type: "Type", isOptional: false, customProperty: nil)]
        let line = Line(property: "Sample", type: "Type2", isOptional: false, customProperty: nil)

        let foundLine = array.find(line: line)

        XCTAssertNotEqual(line, foundLine)
    }

    func testLineArrayFind_NotFoundProperty() {
        let array = [Line(property: "Sample", type: "Type", isOptional: false, customProperty: nil)]
        let line = Line(property: "Sample2", type: "Type", isOptional: false, customProperty: nil)

        let foundLine = array.find(line: line)

        XCTAssertNotEqual(line, foundLine)
    }

    func testLineArrayFind_FoundOptional() {
        let array = [Line(property: "Sample", type: "Type", isOptional: true, customProperty: nil)]
        let line = Line(property: "Sample", type: "Type", isOptional: false, customProperty: nil)

        let foundLine = array.find(line: line)

        XCTAssertEqual(line, foundLine)
    }

    func testLineArrayFind_FoundCustomProperty() {
        let custom = CustomProperty(customLine: "Custom", property: "Prop", keyedProperty: nil)
        let array = [Line(property: "Sample", type: "Type", isOptional: false, customProperty: custom)]
        let line = Line(property: "Sample", type: "Type", isOptional: false, customProperty: nil)

        let foundLine = array.find(line: line)

        XCTAssertEqual(line, foundLine)
    }

    // MARK: Custom Property

    func testCustomPropertyFind_Found() {
        let keyedProp = KeyedProperty(mappedProperty: "Prop", jsonProperty: "JSON")
        let array = [CustomProperty(customLine: "Custom", property: "Prop", keyedProperty: keyedProp)]
        let customProperty = CustomProperty(customLine: "Custom", property: "Prop", keyedProperty: keyedProp)

        let foundProperty = array.find(property: "JSON")

        XCTAssertEqual(foundProperty?.keyedProperty?.jsonProperty, customProperty.keyedProperty?.jsonProperty)
    }

    func testCustomPropertyFind_NotFound() {
        let keyedProp = KeyedProperty(mappedProperty: "Prop", jsonProperty: "JSON")
        let array = [CustomProperty(customLine: "Custom", property: "Prop", keyedProperty: keyedProp)]
        let customProperty = CustomProperty(customLine: "Custom", property: "Prop", keyedProperty: keyedProp)

        let foundProperty = array.find(property: "JSON2")

        XCTAssertNotEqual(foundProperty?.keyedProperty?.jsonProperty, customProperty.keyedProperty?.jsonProperty)
    }

    func testCustomPropertyFind_NilKeyedPropertyFound() {
        let array = [CustomProperty(customLine: "Custom", property: "Prop", keyedProperty: nil)]

        let foundProperty = array.find(property: "Prop")

        XCTAssertNotNil(foundProperty)
    }

    func testCustomPropertyFind_NilKeyedPropertyNotFound() {
        let array = [CustomProperty(customLine: "Custom", property: "Prop", keyedProperty: nil)]

        let foundProperty = array.find(property: "Prop2")

        XCTAssertNil(foundProperty)
    }
}
