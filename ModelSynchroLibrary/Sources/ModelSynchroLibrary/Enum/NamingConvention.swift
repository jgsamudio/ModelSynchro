//
//  NamingConvention.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/5/19.
//

import Foundation

enum NamingConvention: String, Codable {
    case removePluralNamesForModels
    case camelCaseNames
    
    func apply(to string: String) -> String {
        switch self {
        case .removePluralNamesForModels:
            return string.singularized
        case .camelCaseNames:
            return string.split(separator: "_").enumerated().map { (index, element) in
                return index > 0 ? String(element).capitalized : String(element)
            }.joined()
        }
    }
}
