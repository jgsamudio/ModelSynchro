//
//  Component.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Component: Codable {
	let securitySchemes: SecurityScheme
    var schemas: JSON?
    
	enum CodingKeys: String, CodingKey {
		case schemas = "schemas"
		case securitySchemes = "securitySchemes"
	}
    
    // MARK: - Initialization
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        securitySchemes = try container.decode(SecurityScheme.self, forKey: .securitySchemes)
        schemas = nil
    }
    
    // MARK: - Public Functions
    
    public func encode(to encoder: Encoder) throws {
        // Not Implemented
    }
    
    public mutating func updateModel(with json: JSON) {
        schemas = json["schemas"] as? JSON
    }
}
