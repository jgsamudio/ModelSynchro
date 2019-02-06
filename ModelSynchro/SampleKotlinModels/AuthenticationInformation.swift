//
//  AuthenticationInformation.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct AuthenticationInformation: Codable {
	let email: String
	let password: String

	enum CodingKeys: String, CodingKey {
		case email = "email"
		case password = "password"
	}
}
