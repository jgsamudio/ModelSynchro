//
//  Endpoint.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

struct Endpoint: Codable {
    let name: String
    let url: String?
    let endpoint: String?
    let authorized: Bool
    let method: HTTPMethod
    let parameters: [String: String]?
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

