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
	let components: Component // Good to keep
	let externalDocs: ExternalDoc
	let info: Info
	let openapi: String
	let paths: Path // Convert to JSON
	let security: [Security]
	let servers: [Server]
	let tags: [Tag]

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
}
