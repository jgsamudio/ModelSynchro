//
//  Endpoint.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

public struct Endpoint: Codable {
    
    // MARK: - Public Properties
    
    let responseModelName: String
    let url: String?
    let endpoint: String?
    let authorized: Bool
    let method: HTTPMethod
    let parameters: Parameters?
    let queries: [String: String]?
}

extension Endpoint {
    
    func urlRequest(baseUrl: String?) -> URLComponents? {
        if let url = url {
            return URLComponents(string: url)
        } else if let endpoint = endpoint, let baseUrl = baseUrl {
            return URLComponents(string: baseUrl + endpoint)
        }
        return nil
    }
}

public struct Parameters: Codable {
    let modelName: String
    let body: [String: String]
}
