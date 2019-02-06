//
//  ServerAPIInfo.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 1/23/19.
//  Copyright © 2019 Jonathan Samudio. All rights reserved.
//

import Foundation

struct ServerAPIInfo: Codable {
    
    // MARK: - Public Properties
    
    /// List of endpoints to generate models for.
    var apis: [Api]?
    
    /// Header data for the endpoints.
    let headers: [String : String]?
    
    /// Authentication endpoint used to grab the auth token.
    let authEndpoint: AuthEndpoint?
    
    /// Base URL of the API.
    let baseUrl: String?
}

extension ServerAPIInfo {
    
    func endpoints() -> [Endpoint]? {
        guard let apis = apis else {
            return nil
        }
        var endpoints = [Endpoint]()
        for api in apis {
            if let apiEndpoints = api.endpoints {
                endpoints.append(contentsOf: apiEndpoints)
            }
        }
        return endpoints
    }
    
    mutating func updateConfiguration(with json: JSON) {
        if let apiJsonArray = json["apis"] as? [JSON], let apis = apis, apis.count == apiJsonArray.count {
            for (index, _) in apis.enumerated() {
                self.apis?[index].updateConfiguration(with: apiJsonArray[index])
            }
        }
    }
}
