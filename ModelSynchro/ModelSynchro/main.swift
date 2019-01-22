//
//  main.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

print("############### ModelSynchro v0.2.4 ###############")

guard let config = ConfigurationParser().configFile else {
    CommandError.configError.displayError()
    exit(1)
}

let modelParser = ModelParser(config: config)

print("Fetching JSON...")
let requester = NetworkRequester(config: config, currentModels: modelParser.customComponents)
requester.generateModels()

if let _ = config.localJSONDirectory {
    print("Parsing Local Files")
    let localJSONParser = LocalJSONParser(config: config, currentModels: modelParser.customComponents)
    localJSONParser.parseLocalJSON()
}

print("Models Generated!")
print("################## ModelSynchro ###################")
exit(0)
