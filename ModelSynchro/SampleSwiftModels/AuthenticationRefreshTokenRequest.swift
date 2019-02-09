//
//  AuthenticationRefreshTokenRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct AuthenticationRefreshTokenRequest: Codable {
	let refreshToken: String

	enum CodingKeys: String, CodingKey {
		case refreshToken = "refreshToken"
	}
}
