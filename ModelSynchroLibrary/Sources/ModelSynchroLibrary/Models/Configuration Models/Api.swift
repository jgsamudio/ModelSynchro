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
    var endpoints: [Endpoint]?
}

extension Api {
    
    mutating func updateConfiguration(with json: JSON) {
        if let endpointJsonArray = json["endpoints"] as? [JSON],
            let endpoints = endpoints,
            endpoints.count == endpointJsonArray.count {
            
            for (index, _) in endpoints.enumerated() {
                self.endpoints?[index].updateConfiguration(with: endpointJsonArray[index])
            }
        }
    }
}
