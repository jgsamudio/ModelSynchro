//
//  Event_guests.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 05/14/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Event_guests: Codable {
	let __v: Bool
	let _id: String
	let checkIn: Bool
	let email: String
	let eventId: String
	let first_name: String
	let lastUpdated: String
	let last_name: String
	let memberId: String
	let rsvpStatus: String

	enum CodingKeys: String, CodingKey {
		case __v = "__v"
		case _id = "_id"
		case checkIn = "checkIn"
		case email = "email"
		case eventId = "eventId"
		case first_name = "first_name"
		case lastUpdated = "lastUpdated"
		case last_name = "last_name"
		case memberId = "memberId"
		case rsvpStatus = "rsvpStatus"
	}
}
