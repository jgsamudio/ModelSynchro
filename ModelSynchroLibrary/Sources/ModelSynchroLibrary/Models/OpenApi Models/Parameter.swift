//
//  Parameter.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Parameter: Codable {
	let description: String
	let explode: Bool
	let in: String
	let name: String
	let required: Bool
	let schema: Schema
	let style: String

	enum CodingKeys: String, CodingKey {
		case description = "description"
		case explode = "explode"
		case in = "in"
		case name = "name"
		case required = "required"
		case schema = "schema"
		case style = "style"
	}
}
