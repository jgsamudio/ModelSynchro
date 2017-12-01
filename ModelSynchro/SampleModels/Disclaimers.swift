//
//  Disclaimers.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Disclaimers: Codable {
	let area: Int
	let contentHtml: String
	let description: String
	let displayPosition: Int
	let id: Int
	let type: Int

	enum CodingKeys: String, CodingKey {
		case area = "area"
		case contentHtml = "contentHtml"
		case description = "description"
		case displayPosition = "displayPosition"
		case id = "id"
		case type = "type"
	}
}