//
//  Type.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

enum Type {
    case int
    case string
    case bool
    case double
    case array(String)
    case custom(String)
    
    func toString(formatter: LanguageFormatter) -> String {
        switch self {
        case .int:
            return formatter.int
        case .string:
            return formatter.string
        case .bool:
            return formatter.bool
        case .double:
            return formatter.double
        case .array(let type):
            return formatter.arrayFormat(type: type)
        case .custom(let type):
            return formatter.customFormat(type: type)
        }
    }
    
    var isPrimitiveType: Bool {
        switch self {
        case .int, .string, .bool, .double:
            return true
        default:
            return false
        }
    }
}
