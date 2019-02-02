//
//  DirectoryInfo.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/1/19.
//

import Foundation

struct DirectoryInfo: Codable {
    
    // MARK: - Public Properties
    
    /// Output directory of the program for generating the models.
    let outputModelDirectory: String?
    
    /// Output directory of the program for generation the APIs.
    let outputApiDirectory: String?
    
    /// Package for the generated models.
    let outputModelPackage: String?
    
    /// Package for the generated APIs.
    let outputApiPackage: String?
    
    /// Local location of json files.
    let localJSONDirectory: [DirectoryData]?
}
