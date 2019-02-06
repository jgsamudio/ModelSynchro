//
//  FakeModelDataSource.swift
//  ModelSynchroTests
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation
@testable import ModelSynchroLibrary

class FakeModelDataSource: ModelDataSourceProtocol {

    // MARK: - Public Properties
    
    var modelDict = [String : ModelGeneratorProtocol]()
    var fakeGenerator = FakeModelGenerator()

    var modelGeneratorWasCalled = false
    var resetDataSourceWasCalled = false

    // MARK: - Public Functions
    
    func modelGenerator(modelName: String) -> ModelGeneratorProtocol {
        modelGeneratorWasCalled = true
        modelDict[modelName] = fakeGenerator
        return fakeGenerator
    }

    func resetDataSource() {
        resetDataSourceWasCalled = true
    }
}
