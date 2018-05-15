//
//  Attendees.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 05/14/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Attendees: Codable {
	let avatar: String?
	let checked_in: Bool
	let email: String?
	let firstName: String?
	let friendId: String?
	let guestToken: String?
	let headline: String?
	let lastName: String?
	let name: String?
	let updatedAt: String
	let userId: String

	enum CodingKeys: String, CodingKey {
		case avatar = "avatar"
		case checked_in = "checked_in"
		case email = "email"
		case firstName = "firstName"
		case friendId = "friendId"
		case guestToken = "guestToken"
		case headline = "headline"
		case lastName = "lastName"
		case name = "name"
		case updatedAt = "updatedAt"
		case userId = "userId"
	}
}
