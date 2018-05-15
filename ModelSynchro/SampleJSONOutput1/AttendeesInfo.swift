//
//  AttendeesInfo.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 05/14/18.
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
}
