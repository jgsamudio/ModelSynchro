//
//  Api.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/1/19.
//

import Foundation

struct Api: Codable {
    
    // MARK: - Public Properties
    
    let name: String
    
    /// List of endpoints to generate models for.
    let endpoints: [Endpoint]?
}
