//
//  main.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

print("Fetching JSON...")

let parser = ConfigurationParser()
guard let config = parser.configFile else {
    exit(1)
}
let requester = NetworkRequester(config: config)
requester.generateModels()

print("Models Generated!")
exit(0)
