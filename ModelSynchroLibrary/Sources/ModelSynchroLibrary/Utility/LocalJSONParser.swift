//
//  LocalJSONParser.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 2/12/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

open class LocalJSONParser {

    // MARK: - Private Properties
    
    private let config: ConfigurationFile
    private let jsonParser: JsonParser

    fileprivate let jsonFileExtension = ".json"

    // MARK: - Initialization
    
    public init(config: ConfigurationFile, currentModels: ModelComponents) {
        self.config = config
        jsonParser = JsonParser(config: config, currentModels: currentModels)
    }

    // MARK: - Public Functions
    
    public func parseLocalJSON() {
        guard let localJSONDirectory = config.directoryInfo.localJSONDirectory else {
            return
        }

        for dir in localJSONDirectory {
            loadJSON(at: config.localPath(directory: dir.inputDirectory))
            jsonParser.writeModelsToFile(directory: dir)
            jsonParser.clearDataSource()
        }
    }
}

// MARK: - Private Functions
private extension LocalJSONParser {

    func loadJSON(at inputPath: String) {
        let fileNames = FileRetriever.retrieveFilenames(at: inputPath,
                                                        fileExtension: jsonFileExtension)

        for file in fileNames {
            let fileToParse = inputPath + file
            do {
                let content = try String(contentsOfFile: fileToParse, encoding: String.Encoding.utf8)

                let fileName = file.removeTrailing(startWith: jsonFileExtension)
                let data = content.data(using: .utf8)
                jsonParser.parse(data: data, name: fileName)
            } catch {
                print("Error caught with message: \(error.localizedDescription)")
            }
        }
    }
}
