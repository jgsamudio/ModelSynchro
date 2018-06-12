//
//  Objects.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Objects: Codable {
	let placeholder: Placeholder
	let view: View

	enum CodingKeys: String, CodingKey {
		case placeholder = "placeholder"
		case view = "view"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Objects.CodingKeys.self)

        do {
            placeholder = try container.decode(Placeholder.self, forKey: .placeholder)
        } catch {
            print("warning: placeholder key is not found")
            throw APIError.noDataRetreived
        }

        do {
            view = try container.decode(View.self, forKey: .view)
        } catch {
            print("warning: view key is not found")
            throw APIError.noDataRetreived
        }
	}
}
