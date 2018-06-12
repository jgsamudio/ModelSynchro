//
//  FilterSection.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct FilterSection: Codable {
	let filters: [Filter]
	let section: String

	enum CodingKeys: String, CodingKey {
		case filters = "filters"
		case section = "section"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: FilterSection.CodingKeys.self)

        do {
            filters = try container.decode([Filter].self, forKey: .filters)
        } catch {
            print("warning: filters key is not found")
            throw APIError.noDataRetreived
        }

        do {
            section = try container.decode(String.self, forKey: .section)
        } catch {
            print("warning: section key is not found")
            throw APIError.noDataRetreived
        }
	}
}
