//
//  Device.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Device: Codable {
	let adaptation: Adaptation
	let id: String
	let orientation: String

	enum CodingKeys: String, CodingKey {
		case adaptation = "adaptation"
		case id = "id"
		case orientation = "orientation"
	}
}
