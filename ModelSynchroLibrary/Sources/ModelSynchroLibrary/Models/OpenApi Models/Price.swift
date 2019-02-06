//
//  Price.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Price: Codable {
	let example: Double
	let type: String

	enum CodingKeys: String, CodingKey {
		case example = "example"
		case type = "type"
	}
}
