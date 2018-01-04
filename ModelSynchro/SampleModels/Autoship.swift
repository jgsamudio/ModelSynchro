//
//  Autoship.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Autoship: Codable {
	let description: String
	let frequency: Int
	let id: String

	enum CodingKeys: String, CodingKey {
		case description = "description"
		case frequency = "frequency"
		case id = "id"
	}
}