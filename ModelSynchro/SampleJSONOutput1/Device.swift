//
//  Device.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/24/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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