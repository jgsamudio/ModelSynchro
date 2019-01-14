//
//  FilterSection.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
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
}
