//
//  ConfigurationFile.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

struct ConfigurationFile: Codable {
    let authorName: String
    let companyName: String
    let projectName: String
    let outputDirectory: String?
    let endpoints: [String]
    let headers: [String]?
}