//
//  AttendeesInfo.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct AttendeesInfo: Codable {
	let attendees: [Attendees]
	let attendeesCount: Int

	enum CodingKeys: String, CodingKey {
		case attendees = "attendees"
		case attendeesCount = "attendeesCount"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: AttendeesInfo.CodingKeys.self)

        do {
            attendees = try container.decode([Attendees].self, forKey: .attendees)
        } catch {
            print("warning: attendees key is not found")
            throw APIError.noDataRetreived
        }

        do {
            attendeesCount = try container.decode(Int.self, forKey: .attendeesCount)
        } catch {
            print("warning: attendeesCount key is not found")
            throw APIError.noDataRetreived
        }
	}
}
