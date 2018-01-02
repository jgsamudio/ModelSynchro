//
//  SubCategories.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/02/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct SubCategories: Codable {
	let id: String
	let images: [Images]
	let name: String
	let subCategories: [SubCategories]?
	let tags: [Tags]

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case images = "images"
		case name = "name"
		case subCategories = "subCategories"
		case tags = "tags"
	}
}