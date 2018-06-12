//
//  Guests.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
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

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Guests.CodingKeys.self)

        emailAddress = try? container.decode(String.self, forKey: .emailAddress)
        fullName = try? container.decode(String.self, forKey: .fullName)

	}
}
