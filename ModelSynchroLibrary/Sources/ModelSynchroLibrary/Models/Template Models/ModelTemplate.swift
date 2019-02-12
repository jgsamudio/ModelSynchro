//
//  ModelTemplate.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/12/19.
//

import Foundation

struct ModelTemplate: Codable {
    
    let name: String
    let properties: [PropertyTemplate]
    let package: String?
}
