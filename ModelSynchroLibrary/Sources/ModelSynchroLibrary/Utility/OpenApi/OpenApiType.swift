//
//  OpenApiType.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/9/19.
//

import Foundation

enum OpenApiType: String {
    case integer
    case number
    case string
    case boolean
    case double
    case array
    
    var defaultExampleValue: Any {
        switch self {
        case .integer:
            return 3
        case .number:
            return 3
        case .string:
            return "12345"
        case .boolean:
            return true
        case .double:
            return 3.3
        case .array:
            return []
        }
    }
}
