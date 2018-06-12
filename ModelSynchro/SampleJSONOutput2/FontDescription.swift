//
//  FontDescription.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct FontDescription: Codable {
	let key: String
	let pointSize: String
	let type: String

	enum CodingKeys: String, CodingKey {
		case key = "key"
		case pointSize = "pointSize"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: FontDescription.CodingKeys.self)

        do {
            key = try container.decode(String.self, forKey: .key)
        } catch {
            print("warning: key key is not found")
            throw APIError.noDataRetreived
        }

        do {
            pointSize = try container.decode(String.self, forKey: .pointSize)
        } catch {
            print("warning: pointSize key is not found")
            throw APIError.noDataRetreived
        }

        do {
            type = try container.decode(String.self, forKey: .type)
        } catch {
            print("warning: type key is not found")
            throw APIError.noDataRetreived
        }
	}
}
