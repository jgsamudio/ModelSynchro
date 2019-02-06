//
//  SecurityScheme.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct SecurityScheme: Codable {
	let api_key: ApiKey
	let bearerAuth: BearerAuth

	enum CodingKeys: String, CodingKey {
		case api_key = "api_key"
		case bearerAuth = "bearerAuth"
	}
}
