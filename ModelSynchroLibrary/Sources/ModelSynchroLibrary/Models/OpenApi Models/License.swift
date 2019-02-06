//
//  License.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct License: Codable {
	let name: String
	let url: String

	enum CodingKeys: String, CodingKey {
		case name = "name"
		case url = "url"
	}
}
