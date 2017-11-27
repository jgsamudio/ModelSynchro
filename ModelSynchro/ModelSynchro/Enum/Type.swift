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
    case dictionary(String, String)
    
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
            return "[" + type + "]"
        case .dictionary(let keyType, let valueType):
            return "[" + keyType + " : " + valueType + "]"
        }
    }
}
