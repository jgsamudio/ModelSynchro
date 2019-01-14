//
//  AttendeesInfo.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
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
}
