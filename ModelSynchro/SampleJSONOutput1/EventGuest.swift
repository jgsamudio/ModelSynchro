//
//  EventGuest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct EventGuest: Codable {
	let _id: String
	let checkIn: Bool
	let email: String
	let eventId: String
	let first_name: String
	let lastName: String // let last_name: String
	let lastUpdated: String
	let memberId: String
	let status: AnotherType? // let rsvpStatus: String
	let version: Bool? // let __v: Bool

	enum CodingKeys: String, CodingKey {
		case _id = "_id"
		case checkIn = "checkIn"
		case email = "email"
		case eventId = "eventId"
		case first_name = "first_name"
		case lastName = "last_name"
		case lastUpdated = "lastUpdated"
		case memberId = "memberId"
		case status = "rsvpStatus"
		case version = "__v"
	}
}


extension EventGuest {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: EventGuest.CodingKeys.self)

        version = try? container.decode(Bool.self, forKey: .version)
        status = try? container.decode(AnotherType.self, forKey: .status)

        do {
            _id = try container.decode(String.self, forKey: ._id)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: _id key is not found!")
        }

        do {
            checkIn = try container.decode(Bool.self, forKey: .checkIn)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: checkIn key is not found!")
        }

        do {
            email = try container.decode(String.self, forKey: .email)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: email key is not found!")
        }

        do {
            eventId = try container.decode(String.self, forKey: .eventId)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: eventId key is not found!")
        }

        do {
            first_name = try container.decode(String.self, forKey: .first_name)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: first_name key is not found!")
        }

        do {
            lastUpdated = try container.decode(String.self, forKey: .lastUpdated)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: lastUpdated key is not found!")
        }

        do {
            lastName = try container.decode(String.self, forKey: .lastName)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: lastName key is not found!")
        }

        do {
            memberId = try container.decode(String.self, forKey: .memberId)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: memberId key is not found!")
        }
	}
}