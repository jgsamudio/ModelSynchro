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
}

enum PriorityType: Int {
    case bool
    case int
    case double
    
    func comparePriority(type: PriorityType) -> String? {
        let typeArray = [self, type]
        return typeArray.sorted { $0.rawValue > $1.rawValue }.first?.toString()
    }
    
    func toString() -> String {
        switch self {
        case .int:
            return "Int"
        case .bool:
            return "Bool"
        case .double:
            return "Double"
        }
    }
    
    static func priorityType(rawValue: String) -> PriorityType? {
        switch rawValue {
        case "Bool":
            return .bool
        case "Int":
            return .int
        case "Double":
            return .double
        default:
            return nil
        }
    }
}
