//
//  AuthEndpoint.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 1/2/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

struct AuthEndpoint: Codable {
    var url: String
    var authTokenKey: String
    var parameters: [String: String]?
}
