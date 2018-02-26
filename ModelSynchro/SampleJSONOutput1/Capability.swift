//
//  Capability.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/24/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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