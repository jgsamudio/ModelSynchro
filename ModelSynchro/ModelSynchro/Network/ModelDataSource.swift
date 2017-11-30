//
//  ModelDataSource.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

final class ModelDataSource {
    
    var modelDict = [String : ModelGenerator]()
    private let config: ConfigurationFile
    private let currentModels: ModelComponents
    
    init(config: ConfigurationFile, currentModels: ModelComponents) {
        self.config = config
        self.currentModels = currentModels
    }
    
    func modelGenerator(modelName: String) -> ModelGenerator {
        if let model = modelDict[modelName] {
            return model
        } else {
            let model = ModelGenerator(name: modelName.capitalizedFirstLetter(), config: config, currentModels: currentModels)
            modelDict[modelName] = model
            return model
        }
    }
}
