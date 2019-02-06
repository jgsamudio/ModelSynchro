//
//  CardType.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct CardType: Codable {
	let enum: [String]
	let example: String
	let nullable: Bool
	let type: String

	enum CodingKeys: String, CodingKey {
		case enum = "enum"
		case example = "example"
		case nullable = "nullable"
		case type = "type"
	}
}
