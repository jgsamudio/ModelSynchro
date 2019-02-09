//
//  UserUpdateRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct UserUpdateRequest: Codable {
	let email: String
	let firstName: String
	let lastName: String
	let phone: String

	enum CodingKeys: String, CodingKey {
		case email = "email"
		case firstName = "firstName"
		case lastName = "lastName"
		case phone = "phone"
	}
}
