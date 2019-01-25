//
//  HTTPMethod.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 1/23/19.
//  Copyright © 2019 Jonathan Samudio. All rights reserved.
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
