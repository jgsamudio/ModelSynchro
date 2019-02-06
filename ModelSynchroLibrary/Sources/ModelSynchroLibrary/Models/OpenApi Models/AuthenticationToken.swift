//
//  AuthenticationToken.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct AuthenticationToken: Codable {
	let accessToken: String
	let accounts: [Account]
	let refreshToken: String
	let userId: String
	let properties: Propertie?
	let type: String?

	enum CodingKeys: String, CodingKey {
		case accessToken = "accessToken"
		case accounts = "accounts"
		case properties = "properties"
		case refreshToken = "refreshToken"
		case type = "type"
		case userId = "userId"
	}
}
