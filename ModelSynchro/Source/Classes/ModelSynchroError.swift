//
//  ModelSynchroError.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 6/12/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

/// Decoder error for models.
///
/// - keyNotFound: Case for when the key is not found.
enum ModelSynchroDecoderError: Error {
    case keyNotFound(description: String)
}
