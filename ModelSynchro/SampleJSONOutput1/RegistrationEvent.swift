//
//  RegistrationEvent.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct RegistrationEvent: Codable {
	let _id: String
	let attendees: [Attendees]
	let cancelled: Bool
	let capacity: Int
	let createdAt: String
	let description: String
	let guest_capacity: Int
	let guest_per_member: Int
	let guests: [Guests]
	let happening_photo: String
	let lastUpdated: String
	let location: String
	let locationClean: String
	let public: Bool
	let reminderEmail: Bool
	let rsvpStatus: String
	let start_date: String
	let title: String
	let type: String
	let waitlisted: [Waitlisted]
	let waitlistedStatus: String

	enum CodingKeys: String, CodingKey {
		case _id = "_id"
		case attendees = "attendees"
		case cancelled = "cancelled"
		case capacity = "capacity"
		case createdAt = "createdAt"
		case description = "description"
		case guest_capacity = "guest_capacity"
		case guest_per_member = "guest_per_member"
		case guests = "guests"
		case happening_photo = "happening_photo"
		case lastUpdated = "lastUpdated"
		case location = "location"
		case locationClean = "locationClean"
		case public = "public"
		case reminderEmail = "reminderEmail"
		case rsvpStatus = "rsvpStatus"
		case start_date = "start_date"
		case title = "title"
		case type = "type"
		case waitlisted = "waitlisted"
		case waitlistedStatus = "waitlistedStatus"
	}
}


extension RegistrationEvent {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: RegistrationEvent.CodingKeys.self)

        do {
            _id = try container.decode(String.self, forKey: ._id)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: _id key is not found!")
        }

        do {
            attendees = try container.decode([Attendees].self, forKey: .attendees)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: attendees key is not found!")
        }

        do {
            cancelled = try container.decode(Bool.self, forKey: .cancelled)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: cancelled key is not found!")
        }

        do {
            capacity = try container.decode(Int.self, forKey: .capacity)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: capacity key is not found!")
        }

        do {
            createdAt = try container.decode(String.self, forKey: .createdAt)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: createdAt key is not found!")
        }

        do {
            description = try container.decode(String.self, forKey: .description)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: description key is not found!")
        }

        do {
            guest_capacity = try container.decode(Int.self, forKey: .guest_capacity)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: guest_capacity key is not found!")
        }

        do {
            guest_per_member = try container.decode(Int.self, forKey: .guest_per_member)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: guest_per_member key is not found!")
        }

        do {
            guests = try container.decode([Guests].self, forKey: .guests)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: guests key is not found!")
        }

        do {
            happening_photo = try container.decode(String.self, forKey: .happening_photo)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: happening_photo key is not found!")
        }

        do {
            lastUpdated = try container.decode(String.self, forKey: .lastUpdated)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: lastUpdated key is not found!")
        }

        do {
            location = try container.decode(String.self, forKey: .location)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: location key is not found!")
        }

        do {
            locationClean = try container.decode(String.self, forKey: .locationClean)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: locationClean key is not found!")
        }

        do {
            public = try container.decode(Bool.self, forKey: .public)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: public key is not found!")
        }

        do {
            reminderEmail = try container.decode(Bool.self, forKey: .reminderEmail)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: reminderEmail key is not found!")
        }

        do {
            rsvpStatus = try container.decode(String.self, forKey: .rsvpStatus)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: rsvpStatus key is not found!")
        }

        do {
            start_date = try container.decode(String.self, forKey: .start_date)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: start_date key is not found!")
        }

        do {
            title = try container.decode(String.self, forKey: .title)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: title key is not found!")
        }

        do {
            type = try container.decode(String.self, forKey: .type)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: type key is not found!")
        }

        do {
            waitlisted = try container.decode([Waitlisted].self, forKey: .waitlisted)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: waitlisted key is not found!")
        }

        do {
            waitlistedStatus = try container.decode(String.self, forKey: .waitlistedStatus)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: waitlistedStatus key is not found!")
        }
	}
}