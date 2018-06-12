//
//  MappedEvent.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
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

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: MappedEvent.CodingKeys.self)

        attendeesInfo = try? container.decode(AttendeesInfo.self, forKey: .attendeesInfo)
        fee = try? container.decode(Double.self, forKey: .fee)
        guestsInfo = try? container.decode(GuestsInfo.self, forKey: .guestsInfo)
        rsvpStatus = try? container.decode(String.self, forKey: .rsvpStatus)

        do {
            cancelled = try container.decode(Bool.self, forKey: .cancelled)
        } catch {
            print("warning: cancelled key is not found")
            throw APIError.noDataRetreived
        }

        do {
            capacity = try container.decode(Int.self, forKey: .capacity)
        } catch {
            print("warning: capacity key is not found")
            throw APIError.noDataRetreived
        }

        do {
            description = try container.decode(String.self, forKey: .description)
        } catch {
            print("warning: description key is not found")
            throw APIError.noDataRetreived
        }

        do {
            guest_capacity = try container.decode(Int.self, forKey: .guest_capacity)
        } catch {
            print("warning: guest_capacity key is not found")
            throw APIError.noDataRetreived
        }

        do {
            guest_per_member = try container.decode(Int.self, forKey: .guest_per_member)
        } catch {
            print("warning: guest_per_member key is not found")
            throw APIError.noDataRetreived
        }

        do {
            happening_photo = try container.decode(String.self, forKey: .happening_photo)
        } catch {
            print("warning: happening_photo key is not found")
            throw APIError.noDataRetreived
        }

        do {
            location = try container.decode(String.self, forKey: .location)
        } catch {
            print("warning: location key is not found")
            throw APIError.noDataRetreived
        }

        do {
            objectID = try container.decode(String.self, forKey: .objectID)
        } catch {
            print("warning: objectID key is not found")
            throw APIError.noDataRetreived
        }

        do {
            public = try container.decode(Bool.self, forKey: .public)
        } catch {
            print("warning: public key is not found")
            throw APIError.noDataRetreived
        }

        do {
            start_date = try container.decode(Int.self, forKey: .start_date)
        } catch {
            print("warning: start_date key is not found")
            throw APIError.noDataRetreived
        }

        do {
            title = try container.decode(String.self, forKey: .title)
        } catch {
            print("warning: title key is not found")
            throw APIError.noDataRetreived
        }

        do {
            type = try container.decode(String.self, forKey: .type)
        } catch {
            print("warning: type key is not found")
            throw APIError.noDataRetreived
        }

        do {
            userInfo = try container.decode(UserInfo.self, forKey: .userInfo)
        } catch {
            print("warning: userInfo key is not found")
            throw APIError.noDataRetreived
        }
	}
}