//
//  JsonParser.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

public typealias UrlModelDict = [String: String]

/// Parses the json from the returned network response.
open class JsonParser {
    
    /// A dictionary with the request url and the model name for the response.
    public var urlModelDict = UrlModelDict()
    
    // MARK: - Private Properties
    
    /// Data source that contains model information. Public for testing.
    private let modelDataSource: ModelDataSourceProtocol
    private let config: ConfigurationFile

    // MARK: - Initialization
    
    public init(config: ConfigurationFile, currentModels: ModelComponents) {
        self.config = config
        modelDataSource = ModelDataSource(config: config, currentModels: currentModels)
    }

    // Used for testing proposes.
    init(config: ConfigurationFile, modelDataSource: ModelDataSourceProtocol) {
        self.config = config
        self.modelDataSource = modelDataSource
    }

    // MARK: - Public Functions
    
    func parse(data: Data?, name: String, response: URLResponse? = nil) {
        guard let data = data else {
            return
        }
        
        let mappedFilename = config.mapped(filename: name)
        do {
            if let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? JSON {
                updateUrlModelDict(responseUrl: response?.url, type: Type.custom(mappedFilename))
                parse(json: json, modelName: mappedFilename)
            }
            if let jsonArray = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [JSON] {
                updateUrlModelDict(responseUrl: response?.url, type: Type.array(mappedFilename))
                parse(jsonArray: jsonArray, modelName: mappedFilename)
            }
        } catch {
            let verboseMessage = (config.verbose ?? false) ? response?.description : nil
            CommandError.modelParse.displayError(with: mappedFilename, verboseMessage: verboseMessage)
        }
    }
    
    /// Parses the provided json into the model datasource.
    ///
    /// - Parameters:
    ///   - json: JSON data from the network response used to generate the models.
    ///   - modelName: Name of the first model.
    func parse(json: JSON, modelName: String) {
        let model = modelDataSource.modelGenerator(modelName: config.mapped(jsonKey: modelName))
        
        for (key, value) in json {
            guard let type = parse(key: key, value: value) else {
                print("Warning: could not parse \"\(key)\"")
                continue
            }
            model.add(property: key, type: type.toString(formatter: config.languageFormatter()))
        }
        model.incrementIteration()
    }

    func parse(jsonArray: [JSON], modelName: String) {
        jsonArray.forEach {
            parse(json: $0, modelName: modelName)
        }
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

    /// Write datasource to specific output.
    ///
    /// - Parameter outputDirectory: Output file destination.
    func writeModelsToFile(directory: DirectoryData) {
        modelDataSource.modelDict.forEach({ (key, value) in
            value.writeToFile(directory: directory)
        })
    }

    func clearDataSource() {
        modelDataSource.resetDataSource()
    }
    
    func parse(key: String, value: Any) -> Type? {
        if let array = value as? Array<Any> {
            return .array(config.mapped(jsonKey: parse(array: array, key: key)))
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
            return .custom(config.mapped(jsonKey: key))
        }
        return nil
    }
}

// MARK: - Private Functions
private extension JsonParser {
    
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

    private func updateUrlModelDict(responseUrl: URL?, type: Type) {
        guard let urlString = responseUrl?.absoluteString else {
            return
        }
        urlModelDict[urlString] = type.toString(formatter: config.languageFormatter())
    }
}
