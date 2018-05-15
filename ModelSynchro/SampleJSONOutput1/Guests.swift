//
//  Guests.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 05/14/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Guests: Codable {
	let emailAddress: String?
	let fullName: String?

	enum CodingKeys: String, CodingKey {
		case emailAddress = "emailAddress"
		case fullName = "fullName"
	}
}
