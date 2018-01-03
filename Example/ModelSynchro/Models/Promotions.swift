//
//  Promotions.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Promotions: Codable {
	let articleId: Int
	let id: Int
	let message: String
	let type: String

	enum CodingKeys: String, CodingKey {
		case articleId = "articleId"
		case id = "id"
		case message = "message"
		case type = "type"
	}
}