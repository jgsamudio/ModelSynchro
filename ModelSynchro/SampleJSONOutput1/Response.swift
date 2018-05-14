//
//  Response.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 05/14/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Response: Codable {
	let event: Event
	let event_guests: [Event_guests]
	let user_rsvpStatus: String

	enum CodingKeys: String, CodingKey {
		case event = "event"
		case event_guests = "event_guests"
		case user_rsvpStatus = "user_rsvpStatus"
	}
}
