//
//  AccessToken.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct AccessToken: Codable {
	let description: String
	let example: String
	let type: String

	enum CodingKeys: String, CodingKey {
		case description = "description"
		case example = "example"
		case type = "type"
	}
}
