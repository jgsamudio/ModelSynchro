//
//  Placeholder.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Placeholder: Codable {
	let customClass: String
	let id: String
	let placeholderIdentifier: String

	enum CodingKeys: String, CodingKey {
		case customClass = "customClass"
		case id = "id"
		case placeholderIdentifier = "placeholderIdentifier"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Placeholder.CodingKeys.self)

        do {
            customClass = try container.decode(String.self, forKey: .customClass)
        } catch {
            print("warning: customClass key is not found")
            throw APIError.noDataRetreived
        }

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            print("warning: id key is not found")
            throw APIError.noDataRetreived
        }

        do {
            placeholderIdentifier = try container.decode(String.self, forKey: .placeholderIdentifier)
        } catch {
            print("warning: placeholderIdentifier key is not found")
            throw APIError.noDataRetreived
        }
	}
}
