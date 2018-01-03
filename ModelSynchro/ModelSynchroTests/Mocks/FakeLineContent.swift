//
//  FakeLineContent.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

class FakeLineContent: LineContent {

    var shouldUpdatePriority = true

    override func updatePriorityType(property: String, type: String) -> Bool {
        return shouldUpdatePriority
    }
}
