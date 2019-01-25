//
//  Capability.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Capability: Codable {
	let minToolsVersion: String
	let name: String

	enum CodingKeys: String, CodingKey {
		case minToolsVersion = "minToolsVersion"
		case name = "name"
	}
}
