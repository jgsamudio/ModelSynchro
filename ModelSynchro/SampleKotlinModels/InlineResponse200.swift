//
//  InlineResponse200.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/08/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct InlineResponse200: Codable {
	let accounts: [Account]
	let addresses: [Address]
	let email: String
	let firstName: String
	let lastName: String
	let phone: String
	let userId: String

	enum CodingKeys: String, CodingKey {
		case accounts = "accounts"
		case addresses = "addresses"
		case email = "email"
		case firstName = "firstName"
		case lastName = "lastName"
		case phone = "phone"
		case userId = "userId"
	}
}
