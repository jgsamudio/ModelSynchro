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
    
    init(config: ConfigurationFile) {
        self.config = config
    }
    
    func modelGenerator(modelName: String) -> ModelGenerator {
        if let model = modelDict[modelName] {
            return model
        } else {
            let model = ModelGenerator(name: modelName.capitalizedFirstLetter(), config: config)
            modelDict[modelName] = model
            return model
        }
    }
}
