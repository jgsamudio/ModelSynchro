//
//  PlugIn.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct PlugIn: Codable {
	let identifier: String
	let version: String

	enum CodingKeys: String, CodingKey {
		case identifier = "identifier"
		case version = "version"
	}
}