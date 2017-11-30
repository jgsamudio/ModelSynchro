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
    
    func toString() -> String {
        switch self {
        case .int:
            return "Int"
        case .string:
            return "String"
        case .bool:
            return "Bool"
        case .double:
            return "Double"
        case .array(let type):
            return "[" + type.capitalizedFirstLetter() + "]"
        case .custom(let type):
            return type.capitalizedFirstLetter()
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
