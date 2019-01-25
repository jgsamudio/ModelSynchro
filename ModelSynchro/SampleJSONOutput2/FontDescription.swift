//
//  FontDescription.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct FontDescription: Codable {
	let key: String
	let pointSize: String
	let type: String

	enum CodingKeys: String, CodingKey {
		case key = "key"
		case pointSize = "pointSize"
		case type = "type"
	}
}
