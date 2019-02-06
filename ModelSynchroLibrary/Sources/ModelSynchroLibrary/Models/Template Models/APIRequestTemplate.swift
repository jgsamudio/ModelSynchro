//
//  APIRequestTemplate.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/1/19.
//

import Foundation

struct APIRequestTemplate: Codable {
    
    // MARK: - Public Properties
    
    let name: String
    let httpMethodAnnotation: String
    let endpoint: String
    let parameters: String?
    let returnType: String
}
