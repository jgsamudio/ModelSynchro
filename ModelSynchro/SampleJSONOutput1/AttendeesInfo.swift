//
//  AttendeesInfo.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct AttendeesInfo: Codable {
	let attendees: [Attendees]
	let attendeesCount: Int

	enum CodingKeys: String, CodingKey {
		case attendees = "attendees"
		case attendeesCount = "attendeesCount"
	}
}


extension AttendeesInfo {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: AttendeesInfo.CodingKeys.self)

        do {
            attendees = try container.decode([Attendees].self, forKey: .attendees)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: attendees key is not found!")
        }

        do {
            attendeesCount = try container.decode(Int.self, forKey: .attendeesCount)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: attendeesCount key is not found!")
        }
	}
}