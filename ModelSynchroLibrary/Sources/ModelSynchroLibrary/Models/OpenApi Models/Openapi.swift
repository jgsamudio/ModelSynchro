//
//  Openapi.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Openapi: Codable {
	let externalDocs: ExternalDoc
	let info: Info
	let openapi: String
	let security: [Security]
	let servers: [Server]
	let tags: [Tag]
    
    var components: Component
    var paths: JSON?

	enum CodingKeys: String, CodingKey {
		case components = "components"
		case externalDocs = "externalDocs"
		case info = "info"
		case openapi = "openapi"
		case paths = "paths"
		case security = "security"
		case servers = "servers"
		case tags = "tags"
	}
    
    // MARK: - Initialization
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        components = try container.decode(Component.self, forKey: .components)
        externalDocs = try container.decode(ExternalDoc.self, forKey: .externalDocs)
        info = try container.decode(Info.self, forKey: .info)
        openapi = try container.decode(String.self, forKey: .openapi)
        security = try container.decode([Security].self, forKey: .security)
        servers = try container.decode([Server].self, forKey: .servers)
        tags = try container.decode([Tag].self, forKey: .tags)
        
        paths = nil
    }
    
    // MARK: - Public Functions
    
    public func encode(to encoder: Encoder) throws {
        // Not Implemented
    }
    
    public mutating func updateModel(with json: JSON) {
        paths = json["paths"] as? JSON

        if let componentsJson = json["components"] as? JSON {
            components.updateModel(with: componentsJson)
        }
    }
}
