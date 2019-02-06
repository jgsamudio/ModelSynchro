//
//  Server.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Server: Codable {
	let description: String
	let url: String

	enum CodingKeys: String, CodingKey {
		case description = "description"
		case url = "url"
	}
}
