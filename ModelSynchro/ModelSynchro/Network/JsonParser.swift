//
//  JsonParser.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

final class JsonParser {
    
    private let modelDataSource: ModelDataSource
    
    init(config: ConfigurationFile) {
        self.modelDataSource = ModelDataSource(config: config)
    }
    
    func parse(json: JSON, modelName: String) {
        let model = modelDataSource.modelGenerator(modelName: modelName)
        
        for (key, value) in json {
            guard let type = parse(key: key, value: value) else {
                print("Warning: could not parse \"" + key + "\"")
                continue
            }
            model.add(property: key, type: type.toString())
        }
        model.incrementIteration()
    }
    //TODO: Handle Duplicated naming, Products -> Products (Top Recently Viewed)
    //TODO: Handle Duplicated Models OldPrice -> Price They are same thing
    func writeModelsToFile() {
        modelDataSource.modelDict.forEach({ (key, value) in
            value.writeToFile()
        })
    }
}

private extension JsonParser {
    
    func parse(key: String, value: Any) -> Type? {
        if let array = value as? Array<Any> {
            parse(array: array, key: key)
            return .array(key)
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
    
    private func parse(array: Array<Any>, key: String) {
        array.forEach {
            if let json = $0 as? JSON {
                parse(json: json, modelName: key)
            }
        }
        
        if array.isEmpty {
            parse(json: [:], modelName: key)
        }
    }
}
