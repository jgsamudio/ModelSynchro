//
//  Amount.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Amount: Codable {
	let example: Int
	let type: String

	enum CodingKeys: String, CodingKey {
		case example = "example"
		case type = "type"
	}
}
