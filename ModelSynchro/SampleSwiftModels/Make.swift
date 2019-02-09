//
//  Make.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Make: Codable {
	let makeId: String
	let name: String

	enum CodingKeys: String, CodingKey {
		case makeId = "makeId"
		case name = "name"
	}
}
