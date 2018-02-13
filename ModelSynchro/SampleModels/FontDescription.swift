//
//  FontDescription.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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