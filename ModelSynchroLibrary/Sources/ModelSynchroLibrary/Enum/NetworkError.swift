//
//  NetworkError.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case network(error: Error)
    case jsonSerialization
    case objectSerialization(reason: String)
    case urlInvalid
}
