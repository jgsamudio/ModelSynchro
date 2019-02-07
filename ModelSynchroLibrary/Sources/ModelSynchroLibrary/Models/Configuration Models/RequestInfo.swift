//
//  RequestInfo.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/4/19.
//

import Foundation

public struct RequestInfo: Codable {
    
    // MARK: - Public Properties
    
    let modelName: String?
    var data: JSON?
    
    private enum CodingKeys: String, CodingKey {
        case modelName
    }
    
    // MARK: - Initialization
    
    public init(modelName: String?, data: JSON?) {
        self.modelName = modelName
        self.data = data
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        modelName = try? container.decode(String.self, forKey: .modelName)
    }
    
    // MARK: - Public Functions
    
    public func encode(to encoder: Encoder) throws {
        // Not Implemented
    }
    
}
