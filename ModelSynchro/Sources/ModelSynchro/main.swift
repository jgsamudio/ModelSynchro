//
//  main.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation
import ModelSynchroLibrary

print("############### ModelSynchro v0.3.0 ###############")

guard let config = ConfigurationParser().configFile else {
    CommandError.configFile.displayError()
    exit(1)
}

let modelParser = ModelParser(config: config)

print("Fetching JSON...")
let requester = NetworkRequester(config: config, currentModels: modelParser.customComponents)
requester.generateModels()

if config.containsLocalDirectory {
    print("Parsing Local Files")
    let localJSONParser = LocalJSONParser(config: config, currentModels: modelParser.customComponents)
    localJSONParser.parseLocalJSON()
}

if config.containsOutputApiDirectory {
    print("Parsing API Template Files")
    let templateParser = StencilParser(config: config)
    templateParser.generateAPI()
}

print("Models Generated!")
print("############### ModelSynchro v0.3.0 ###############")
exit(0)
