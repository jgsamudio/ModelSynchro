//
//  JsonParser.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

/// Parses the json from the returned network response.
final class JsonParser {
    
    /// Data source that contains model information. Public for testing.
    private let modelDataSource: ModelDataSourceProtocol
    private let config: ConfigurationFile

    init(config: ConfigurationFile, currentModels: ModelComponents) {
        self.config = config
        modelDataSource = ModelDataSource(config: config, currentModels: currentModels)
    }

    init(config: ConfigurationFile, modelDataSource: ModelDataSourceProtocol) {
        self.config = config
        self.modelDataSource = modelDataSource
    }
    
    /// Parses the provided json into the model datasource.
    ///
    /// - Parameters:
    ///   - json: JSON data from the network response used to generate the models.
    ///   - modelName: Name of the first model.
    func parse(json: JSON, modelName: String) {
        let model = modelDataSource.modelGenerator(modelName: modelName)
        
        for (key, value) in json {
            guard let type = parse(key: key, value: value) else {
                print("Warning: could not parse \"\(key)\"")
                continue
            }
            model.add(property: key, type: type.toString(formatter: config.languageFormatter()))
        }
        model.incrementIteration()
    }

    //TODO: Handle Duplicated naming, Products -> Products (Top Recently Viewed)
    //TODO: Handle Duplicated Models OldPrice -> Price They are same thing

    //TODO: Allow comments on models. (///)
    //TODO: Allow extensions. (///)
    //TODO: Handle network sign in access token

    /// Write datasource models to file.
    func writeModelsToFile() {
        modelDataSource.modelDict.forEach({ (key, value) in
            value.writeToFile()
        })
    }
}

private extension JsonParser {
    
    func parse(key: String, value: Any) -> Type? {
        if let array = value as? Array<Any> {
            return .array(parse(array: array, key: key))
        } else if let _ = value as? Bool {
            return .bool
        } else if let _ = value as? Int {
            return .int
        } else if let _ = value as? Double {
            return .double
        } else if let _ = value as? String {
            return .string
        } else if let json = value as? JSON {
            parse(json: json, modelName: key)
            return .custom(key)
        }        
        return nil
    }
    
    private func parse(array: Array<Any>, key: String) -> String {
        if let firstItem = array.first, let type = parse(key: key, value: firstItem), type.isPrimitiveType  {
            return type.toString(formatter: config.languageFormatter())
        }
        
        array.forEach {
            if let json = $0 as? JSON {
                parse(json: json, modelName: key)
            }
        }
        
        if array.isEmpty {
            parse(json: [:], modelName: key)
        }
        
        return key
    }
}
