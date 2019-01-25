//
//  Waitlisted.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Waitlisted: Codable {
	let checked_in: Bool
	let updatedAt: String
	let userId: String

	enum CodingKeys: String, CodingKey {
		case checked_in = "checked_in"
		case updatedAt = "updatedAt"
		case userId = "userId"
	}
}
