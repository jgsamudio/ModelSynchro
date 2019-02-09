//
//  AuthenticationToken.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
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
	let error: String?

	enum CodingKeys: String, CodingKey {
		case accessToken = "accessToken"
		case accounts = "accounts"
		case error = "error"
		case refreshToken = "refreshToken"
		case userId = "userId"
	}
}
