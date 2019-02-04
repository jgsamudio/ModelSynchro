//
//  RequestInfo.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/4/19.
//

import Foundation

public struct RequestInfo: Codable {
    let modelName: String?
    let data: JSON
    
    private enum CodingKeys: String, CodingKey {
        case modelName
        case data
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        modelName = try? container.decode(String.self, forKey: .modelName)
        
        if let data = try? container.decode([String: String].self, forKey: .data) {
            self.data = data
        } else if let data = try? container.decode([String: Int].self, forKey: .data) {
            self.data = data
        } else if let data = try? container.decode([String: Bool].self, forKey: .data) {
            self.data = data
        } else if let data = try? container.decode([String: Double].self, forKey: .data) {
            self.data = data
        } else {
            throw EncodingError.invalidValue("", EncodingError.Context(codingPath: [CodingKeys.data],
                                                                       debugDescription: "Invalid Data Type"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        // Not Implemented
    }
    
}
