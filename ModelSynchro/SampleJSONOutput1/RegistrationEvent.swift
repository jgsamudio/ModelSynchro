//
//  RegistrationEvent.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

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

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: RegistrationEvent.CodingKeys.self)

        do {
            _id = try container.decode(String.self, forKey: ._id)
        } catch {
            print("warning: _id key is not found")
            throw APIError.noDataRetreived
        }

        do {
            attendees = try container.decode([Attendees].self, forKey: .attendees)
        } catch {
            print("warning: attendees key is not found")
            throw APIError.noDataRetreived
        }

        do {
            cancelled = try container.decode(Bool.self, forKey: .cancelled)
        } catch {
            print("warning: cancelled key is not found")
            throw APIError.noDataRetreived
        }

        do {
            capacity = try container.decode(Int.self, forKey: .capacity)
        } catch {
            print("warning: capacity key is not found")
            throw APIError.noDataRetreived
        }

        do {
            createdAt = try container.decode(String.self, forKey: .createdAt)
        } catch {
            print("warning: createdAt key is not found")
            throw APIError.noDataRetreived
        }

        do {
            description = try container.decode(String.self, forKey: .description)
        } catch {
            print("warning: description key is not found")
            throw APIError.noDataRetreived
        }

        do {
            guest_capacity = try container.decode(Int.self, forKey: .guest_capacity)
        } catch {
            print("warning: guest_capacity key is not found")
            throw APIError.noDataRetreived
        }

        do {
            guest_per_member = try container.decode(Int.self, forKey: .guest_per_member)
        } catch {
            print("warning: guest_per_member key is not found")
            throw APIError.noDataRetreived
        }

        do {
            guests = try container.decode([Guests].self, forKey: .guests)
        } catch {
            print("warning: guests key is not found")
            throw APIError.noDataRetreived
        }

        do {
            happening_photo = try container.decode(String.self, forKey: .happening_photo)
        } catch {
            print("warning: happening_photo key is not found")
            throw APIError.noDataRetreived
        }

        do {
            lastUpdated = try container.decode(String.self, forKey: .lastUpdated)
        } catch {
            print("warning: lastUpdated key is not found")
            throw APIError.noDataRetreived
        }

        do {
            location = try container.decode(String.self, forKey: .location)
        } catch {
            print("warning: location key is not found")
            throw APIError.noDataRetreived
        }

        do {
            locationClean = try container.decode(String.self, forKey: .locationClean)
        } catch {
            print("warning: locationClean key is not found")
            throw APIError.noDataRetreived
        }

        do {
            public = try container.decode(Bool.self, forKey: .public)
        } catch {
            print("warning: public key is not found")
            throw APIError.noDataRetreived
        }

        do {
            reminderEmail = try container.decode(Bool.self, forKey: .reminderEmail)
        } catch {
            print("warning: reminderEmail key is not found")
            throw APIError.noDataRetreived
        }

        do {
            rsvpStatus = try container.decode(String.self, forKey: .rsvpStatus)
        } catch {
            print("warning: rsvpStatus key is not found")
            throw APIError.noDataRetreived
        }

        do {
            start_date = try container.decode(String.self, forKey: .start_date)
        } catch {
            print("warning: start_date key is not found")
            throw APIError.noDataRetreived
        }

        do {
            title = try container.decode(String.self, forKey: .title)
        } catch {
            print("warning: title key is not found")
            throw APIError.noDataRetreived
        }

        do {
            type = try container.decode(String.self, forKey: .type)
        } catch {
            print("warning: type key is not found")
            throw APIError.noDataRetreived
        }

        do {
            waitlisted = try container.decode([Waitlisted].self, forKey: .waitlisted)
        } catch {
            print("warning: waitlisted key is not found")
            throw APIError.noDataRetreived
        }

        do {
            waitlistedStatus = try container.decode(String.self, forKey: .waitlistedStatus)
        } catch {
            print("warning: waitlistedStatus key is not found")
            throw APIError.noDataRetreived
        }
	}
}
