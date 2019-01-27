//
//  KeyedProperty.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/1/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

/// Contains information from an existing model.
struct KeyedProperty {

    /// Custom property mapped by the developer.
    let mappedProperty: String

    /// JSON property from the network call.
    let jsonProperty: String
}
