//
//  CustomProperty.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/1/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

/// Custom property of custom key declaration.
struct CustomProperty {

    // MARK: - Public Properties
    
    /// Custom line determined by the developer.
    let customLine: String

    /// Property of the line.
    let property: String
    
    /// Contains the information for a keyed model.
    let keyedProperty: KeyedProperty?
}
