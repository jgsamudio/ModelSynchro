//
//  Endpoint.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

enum HTTPMethod: String, Codable {
    case get
    case post
    case put
    case patch
    case delete
    case head
    case options
    case trace
}

struct Endpoint: Codable {
    let name: String
    let url: String
    let authorized: Bool
    let method: HTTPMethod
    let parameters: [String: String]?
}

