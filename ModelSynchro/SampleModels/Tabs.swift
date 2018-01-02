//
//  Tabs.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/02/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Tabs: Codable {
	let contents: [Contents]
	let name: String

	enum CodingKeys: String, CodingKey {
		case contents = "contents"
		case name = "name"
	}
}