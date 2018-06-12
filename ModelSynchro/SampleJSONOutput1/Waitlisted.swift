//
//  Waitlisted.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Waitlisted: Codable {
	let checked_in: Bool
	let updatedAt: String
	let userId: String

	enum CodingKeys: String, CodingKey {
		case checked_in = "checked_in"
		case updatedAt = "updatedAt"
		case userId = "userId"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Waitlisted.CodingKeys.self)

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
