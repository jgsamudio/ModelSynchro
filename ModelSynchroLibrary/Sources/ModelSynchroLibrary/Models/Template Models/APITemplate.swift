//
//  APITemplate.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/1/19.
//

import Foundation

struct APITemplate: Codable {
    
    // MARK: - Public Properties
    
    let name: String
    let apiRequests: [APIRequestTemplate]
}
