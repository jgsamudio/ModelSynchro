//
//  FakeLineContent.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation
@testable import ModelSynchroLibrary

class FakeLineContent: LineContent {

    // MARK: - Public Properties
    
    var shouldUpdatePriority = true

    var checkOptionalWasCalled = false

    // MARK: - Public Functions
    
    override func updatePriorityType(property: String, type: String) -> Bool {
        return shouldUpdatePriority
    }

    override func checkOptional(otherLineContent: LineContent) {
        checkOptionalWasCalled = true
    }
}
