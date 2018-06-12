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
            print("warning: bookmarked key is not found")
            throw APIError.noDataRetreived
        }

        do {
            eventId = try container.decode(String.self, forKey: .eventId)
        } catch {
            print("warning: eventId key is not found")
            throw APIError.noDataRetreived
        }

        do {
            going = try container.decode(Bool.self, forKey: .going)
        } catch {
            print("warning: going key is not found")
            throw APIError.noDataRetreived
        }

        do {
            waitlisted = try container.decode(Bool.self, forKey: .waitlisted)
        } catch {
            print("warning: waitlisted key is not found")
            throw APIError.noDataRetreived
        }
	}
}
