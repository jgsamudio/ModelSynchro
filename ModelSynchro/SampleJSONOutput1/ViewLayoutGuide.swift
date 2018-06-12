//
//  ViewLayoutGuide.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct ViewLayoutGuide: Codable {
	let id: String
	let key: String

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case key = "key"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: ViewLayoutGuide.CodingKeys.self)

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            print("warning: id key is not found")
            throw APIError.noDataRetreived
        }

        do {
            key = try container.decode(String.self, forKey: .key)
        } catch {
            print("warning: key key is not found")
            throw APIError.noDataRetreived
        }
	}
}
