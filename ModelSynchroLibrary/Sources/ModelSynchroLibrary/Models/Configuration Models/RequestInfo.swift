//
//  RequestInfo.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/4/19.
//

import Foundation

public struct RequestInfo: Codable {
    let modelName: String?
    var data: JSON?
    
    private enum CodingKeys: String, CodingKey {
        case modelName
        case data
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        modelName = try? container.decode(String.self, forKey: .modelName)
        data = nil
    }
    
    public func encode(to encoder: Encoder) throws {
        // Not Implemented
    }
    
}
