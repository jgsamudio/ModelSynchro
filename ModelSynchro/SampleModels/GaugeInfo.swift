//
//  GaugeInfo.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct GaugeInfo: Codable {
	let id: String
	let maxLabel: String
	let minLabel: String
	let name: String
	let type: String

	enum CodingKeys: String, CodingKey {
		case maxLabel = "maxLabel"
		case type = "type"
		case minLabel = "minLabel"
		case name = "name"
		case id = "id"
	}
}