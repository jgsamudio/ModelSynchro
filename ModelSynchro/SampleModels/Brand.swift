//
//  Brand.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Brand: Codable {
	let id: Int
	let name: String

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case name = "name"
	}
}