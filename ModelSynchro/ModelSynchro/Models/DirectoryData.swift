//
//  DirectoryData.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 2/16/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

struct DirectoryData: Codable {
    
    /// Input direction of the local JSON files.
    let inputDirectory: String
    
    /// Directory to place the generated files.
    let outputDirectory: String
    
    /// Output package for Kotlin file generation.
    let outputPackage: String?
    
    init(inputDirectory: String = "", outputDirectory: String = "", outputPackage: String? = nil) {
        self.inputDirectory = inputDirectory
        self.outputDirectory = outputDirectory
        self.outputPackage = outputPackage
    }
}
