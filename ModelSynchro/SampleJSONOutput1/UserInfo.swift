//
//  UserInfo.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct UserInfo: Codable {
	let bookmarked: Bool
	let eventId: String
	let going: Bool
	let guests: [Guests]?
	let guestsCount: Int?
	let waitlisted: Bool

	enum CodingKeys: String, CodingKey {
		case bookmarked = "bookmarked"
		case eventId = "eventId"
		case going = "going"
		case guests = "guests"
		case guestsCount = "guestsCount"
		case waitlisted = "waitlisted"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: UserInfo.CodingKeys.self)

        guests = try? container.decode([Guests].self, forKey: .guests)
        guestsCount = try? container.decode(Int.self, forKey: .guestsCount)

        do {
            bookmarked = try container.decode(Bool.self, forKey: .bookmarked)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: bookmarked key is not found!")
        }

        do {
            eventId = try container.decode(String.self, forKey: .eventId)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: eventId key is not found!")
        }

        do {
            going = try container.decode(Bool.self, forKey: .going)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: going key is not found!")
        }

        do {
            waitlisted = try container.decode(Bool.self, forKey: .waitlisted)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: waitlisted key is not found!")
        }
	}
}
