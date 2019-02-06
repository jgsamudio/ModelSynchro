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
	let requestBodies: RequestBodie // Remove
	let responses: Response
	let schemas: Schema // Should be JSON
	let securitySchemes: SecurityScheme

	enum CodingKeys: String, CodingKey {
		case requestBodies = "requestBodies"
		case responses = "responses"
		case schemas = "schemas"
		case securitySchemes = "securitySchemes"
	}
}
