//
//  MappedEvent.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 05/15/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct MappedEvent: Codable {
	let attendeesInfo: AttendeesInfo?
	let cancelled: Bool
	let capacity: Int
	let description: String
	let fee: Double?
	let guest_capacity: Int
	let guest_per_member: Int
	let guestsInfo: GuestsInfo?
	let happening_photo: String
	let location: String
	let objectID: String
	let public: Bool
	let rsvpStatus: String?
	let start_date: Int
	let title: String
	let type: String
	let userInfo: UserInfo

	enum CodingKeys: String, CodingKey {
		case attendeesInfo = "attendeesInfo"
		case cancelled = "cancelled"
		case capacity = "capacity"
		case description = "description"
		case fee = "fee"
		case guest_capacity = "guest_capacity"
		case guest_per_member = "guest_per_member"
		case guestsInfo = "guestsInfo"
		case happening_photo = "happening_photo"
		case location = "location"
		case objectID = "objectID"
		case public = "public"
		case rsvpStatus = "rsvpStatus"
		case start_date = "start_date"
		case title = "title"
		case type = "type"
		case userInfo = "userInfo"
	}
}
