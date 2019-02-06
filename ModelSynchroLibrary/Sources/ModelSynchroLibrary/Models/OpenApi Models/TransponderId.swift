//
//  TransponderId.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct TransponderId: Codable {
	let example: String
	let type: String?
	let nullable: Bool?

	enum CodingKeys: String, CodingKey {
		case example = "example"
		case nullable = "nullable"
		case type = "type"
	}
}
