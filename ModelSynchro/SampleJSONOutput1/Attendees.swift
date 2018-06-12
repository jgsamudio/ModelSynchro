//
//  Attendees.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Attendees: Codable {
	let avatar: String?
	let checked_in: Bool
	let email: String?
	let firstName: String?
	let friendId: String?
	let guestToken: String?
	let headline: String?
	let lastName: String?
	let name: String?
	let updatedAt: String
	let userId: String

	enum CodingKeys: String, CodingKey {
		case avatar = "avatar"
		case checked_in = "checked_in"
		case email = "email"
		case firstName = "firstName"
		case friendId = "friendId"
		case guestToken = "guestToken"
		case headline = "headline"
		case lastName = "lastName"
		case name = "name"
		case updatedAt = "updatedAt"
		case userId = "userId"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Attendees.CodingKeys.self)

        avatar = try? container.decode(String.self, forKey: .avatar)
        email = try? container.decode(String.self, forKey: .email)
        firstName = try? container.decode(String.self, forKey: .firstName)
        friendId = try? container.decode(String.self, forKey: .friendId)
        guestToken = try? container.decode(String.self, forKey: .guestToken)
        headline = try? container.decode(String.self, forKey: .headline)
        lastName = try? container.decode(String.self, forKey: .lastName)
        name = try? container.decode(String.self, forKey: .name)

        do {
            checked_in = try container.decode(Bool.self, forKey: .checked_in)
        } catch {
            print("warning: checked_in key is not found")
            throw APIError.noDataRetreived
        }

        do {
            updatedAt = try container.decode(String.self, forKey: .updatedAt)
        } catch {
            print("warning: updatedAt key is not found")
            throw APIError.noDataRetreived
        }

        do {
            userId = try container.decode(String.self, forKey: .userId)
        } catch {
            print("warning: userId key is not found")
            throw APIError.noDataRetreived
        }
	}
}
