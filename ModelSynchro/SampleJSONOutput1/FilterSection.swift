//
//  FilterSection.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 05/11/18.
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
}
