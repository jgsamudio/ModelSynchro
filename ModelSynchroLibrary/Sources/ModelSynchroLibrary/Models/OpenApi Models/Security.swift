//
//  Security.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Security: Codable {
	let bearerAuth: [BearerAuth]

	enum CodingKeys: String, CodingKey {
		case bearerAuth = "bearerAuth"
	}
}
