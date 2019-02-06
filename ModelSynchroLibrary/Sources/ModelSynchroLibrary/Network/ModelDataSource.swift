//
//  ModelDataSource.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

protocol ModelDataSourceProtocol {
    var modelDict: [String : ModelGeneratorProtocol] { get set }
    func modelGenerator(modelName: String) -> ModelGeneratorProtocol
    func resetDataSource()
}

/// Data source handles creation and insertion of models generated.
final class ModelDataSource: ModelDataSourceProtocol {

    // MARK: - Public Properties
    
    /// Contains all information for the models generated.
    var modelDict = [String : ModelGeneratorProtocol]()

    // MARK: - Private Properties
    
    private let config: ConfigurationFile
    private let currentModels: ModelComponents
    
    // MARK: - Initialization
    
    init(config: ConfigurationFile, currentModels: ModelComponents) {
        self.config = config
        self.currentModels = currentModels
    }
    
    // MARK: - Public Functions
    
    /// Creates a model generator for the given model name.
    ///
    /// - Parameter modelName: Name of the model to create a generator for.
    /// - Returns: If a generator is found return it, if not, create and add new generator.
    func modelGenerator(modelName: String) -> ModelGeneratorProtocol {
        if let model = modelDict[modelName] {
            return model
        }

        let model = ModelGenerator(name: modelName.capitalizedFirstLetter(),
                                   config: config,
                                   currentModels: currentModels)
        modelDict[modelName] = model
        return model
    }

    func resetDataSource() {
        modelDict = [String : ModelGeneratorProtocol]()
    }

}
