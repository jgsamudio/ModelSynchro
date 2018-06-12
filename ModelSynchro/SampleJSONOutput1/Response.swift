//
//  Response.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct Response: Codable {
	let event: RegistrationEvent
	let event_guests: [EventGuest]
	let user_rsvpStatus: String

	enum CodingKeys: String, CodingKey {
		case event = "event"
		case event_guests = "event_guests"
		case user_rsvpStatus = "user_rsvpStatus"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Response.CodingKeys.self)

        do {
            event = try container.decode(RegistrationEvent.self, forKey: .event)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: event key is not found!")
        }

        do {
            event_guests = try container.decode([EventGuest].self, forKey: .event_guests)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: event_guests key is not found!")
        }

        do {
            user_rsvpStatus = try container.decode(String.self, forKey: .user_rsvpStatus)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: user_rsvpStatus key is not found!")
        }
	}
}
