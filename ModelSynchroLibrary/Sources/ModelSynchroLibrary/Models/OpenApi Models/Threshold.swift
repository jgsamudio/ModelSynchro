//
//  Threshold.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Threshold: Codable {
	let description: String
	let nullable: Bool
	let type: String
	let example: Int?

	enum CodingKeys: String, CodingKey {
		case description = "description"
		case example = "example"
		case nullable = "nullable"
		case type = "type"
	}
}
