//
//  MappedModelInfo.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 5/14/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

struct MappedModelInfo: Codable {

    /// JSON key used to find the model name to map to.
    let jsonKey: String?

    /// Filename used to find the model name to map to.
    let fileName: String?

    /// Mapped name of the model.
    let mappedName: String
}
