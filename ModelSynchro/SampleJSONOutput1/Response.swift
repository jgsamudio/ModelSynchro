//
//  Response.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Response: Codable {
	let event: RegistrationEvent
	let event_guests: [EventGuest]
	let user_rsvpStatus: String

	enum CodingKeys: String, CodingKey {
		case event = "event"
		case event_guests = "event_guests"
		case user_rsvpStatus = "user_rsvpStatus"
	}
}
