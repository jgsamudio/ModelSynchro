//
//  RegistrationEvent.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 05/14/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct RegistrationEvent: Codable {
	let _id: String
	let attendees: [Attendees]
	let cancelled: Bool
	let capacity: Int
	let createdAt: String
	let description: String
	let guest_capacity: Int
	let guest_per_member: Int
	let guests: [Guests]
	let happening_photo: String
	let isPublic: Bool // let public: Bool
	let lastUpdated: String
	let location: String
	let locationClean: String
	let reminderEmail: Bool
	let rsvpStatus: String
	let start_date: String
	let title: String
	let type: String
	let waitlisted: [Waitlisted]
	let waitlistedStatus: String

	enum CodingKeys: String, CodingKey {
		case _id = "_id"
		case attendees = "attendees"
		case cancelled = "cancelled"
		case capacity = "capacity"
		case createdAt = "createdAt"
		case description = "description"
		case guest_capacity = "guest_capacity"
		case guest_per_member = "guest_per_member"
		case guests = "guests"
		case happening_photo = "happening_photo"
		case isPublic = "public"
		case lastUpdated = "lastUpdated"
		case location = "location"
		case locationClean = "locationClean"
		case reminderEmail = "reminderEmail"
		case rsvpStatus = "rsvpStatus"
		case start_date = "start_date"
		case title = "title"
		case type = "type"
		case waitlisted = "waitlisted"
		case waitlistedStatus = "waitlistedStatus"
	}
}
