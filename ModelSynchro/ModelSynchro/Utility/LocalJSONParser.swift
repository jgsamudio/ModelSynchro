//
//  LocalJSONParser.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 2/12/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

final class LocalJSONParser {

    private let config: ConfigurationFile
    private let jsonParser: JsonParser

    fileprivate let jsonFileExtension = "json"

    init(config: ConfigurationFile, currentModels: ModelComponents) {
        self.config = config
        jsonParser = JsonParser(config: config, currentModels: currentModels)
    }

    func parseLocalJSON() {
        loadJSON()
        jsonParser.writeModelsToFile()
    }
}

private extension LocalJSONParser {

    func loadJSON() {
        let fileNames = FileRetriever.retrieveFilenames(at: config.localJSONPath,
                                                        fileExtension: jsonFileExtension)

        for file in fileNames {
            let fileToParse = config.localJSONPath + file
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
