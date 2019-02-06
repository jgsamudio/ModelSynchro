//
//  Auth.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Auth: Codable {
	let content: Content
	let description: String
	let required: Bool

	enum CodingKeys: String, CodingKey {
		case content = "content"
		case description = "description"
		case required = "required"
	}
}
