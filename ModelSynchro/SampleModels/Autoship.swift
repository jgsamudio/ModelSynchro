//
//  Autoship.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Autoship: Codable {
	let description: StringEnum // let description: String
	let frequency: Int
	let id: String

	enum CodingKeys: String, CodingKey {
		case description = "description"
		case frequency = "frequency"
		case id = "id"
	}
}