//
//  EventGuest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct EventGuest: Codable {
	let _id: String
	let checkIn: Bool
	let email: String
	let eventId: String
	let first_name: String
	let lastUpdated: String
	let last_name: String
	let memberId: String
	let status: AnotherType? // let rsvpStatus: String
	let version: Bool? // let __v: Bool

	enum CodingKeys: String, CodingKey {
		case _id = "_id"
		case checkIn = "checkIn"
		case email = "email"
		case eventId = "eventId"
		case first_name = "first_name"
		case lastUpdated = "lastUpdated"
		case last_name = "last_name"
		case memberId = "memberId"
		case status = "rsvpStatus"
		case version = "__v"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: EventGuest.CodingKeys.self)

        version = try? container.decode(Bool.self, forKey: .version)
        status = try? container.decode(AnotherType.self, forKey: .status)

        do {
            _id = try container.decode(String.self, forKey: ._id)
        } catch {
            print("warning: _id key is not found")
            throw APIError.noDataRetreived
        }

        do {
            checkIn = try container.decode(Bool.self, forKey: .checkIn)
        } catch {
            print("warning: checkIn key is not found")
            throw APIError.noDataRetreived
        }

        do {
            email = try container.decode(String.self, forKey: .email)
        } catch {
            print("warning: email key is not found")
            throw APIError.noDataRetreived
        }

        do {
            eventId = try container.decode(String.self, forKey: .eventId)
        } catch {
            print("warning: eventId key is not found")
            throw APIError.noDataRetreived
        }

        do {
            first_name = try container.decode(String.self, forKey: .first_name)
        } catch {
            print("warning: first_name key is not found")
            throw APIError.noDataRetreived
        }

        do {
            lastUpdated = try container.decode(String.self, forKey: .lastUpdated)
        } catch {
            print("warning: lastUpdated key is not found")
            throw APIError.noDataRetreived
        }

        do {
            last_name = try container.decode(String.self, forKey: .last_name)
        } catch {
            print("warning: last_name key is not found")
            throw APIError.noDataRetreived
        }

        do {
            memberId = try container.decode(String.self, forKey: .memberId)
        } catch {
            print("warning: memberId key is not found")
            throw APIError.noDataRetreived
        }
	}
}
