//
//  main.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

print("Fetching JSON...")

guard let config = ConfigurationParser().configFile else {
    print("Config error")
    exit(1)
}

let modelParser = ModelParser(config: config)
let requester = NetworkRequester(config: config, currentModels: modelParser.customComponents)
requester.generateModels()

print("Models Generated!")
exit(0)
