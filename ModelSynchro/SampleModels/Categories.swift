//
//  Categories.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Categories: Codable {
	let id: String
	let name: String

	enum CodingKeys: String, CodingKey {
		case name = "name"
		case id = "id"
	}
}