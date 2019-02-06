//
//  BearerAuth.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct BearerAuth: Codable {
	let bearerFormat: String?
	let scheme: String?
	let type: String?

	enum CodingKeys: String, CodingKey {
		case bearerFormat = "bearerFormat"
		case scheme = "scheme"
		case type = "type"
	}
}
