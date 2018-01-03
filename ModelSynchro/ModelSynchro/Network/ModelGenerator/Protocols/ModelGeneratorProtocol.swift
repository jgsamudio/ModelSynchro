//
//  ModelGeneratorProtocol.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 1/3/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

protocol ModelGeneratorProtocol {
    var source: GeneratorDataSourceProtocol { get }
    func add(property: String, type: String)
    func incrementIteration()
    func writeToFile()
}
