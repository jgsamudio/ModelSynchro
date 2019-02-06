//
//  ApiKey.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct ApiKey: Codable {
	let `in`: String
	let name: String
	let type: String

	enum CodingKeys: String, CodingKey {
		case `in` = "in"
		case name = "name"
		case type = "type"
	}
}
