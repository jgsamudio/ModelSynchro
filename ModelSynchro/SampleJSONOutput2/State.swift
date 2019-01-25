//
//  State.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct State: Codable {
	let key: String
	let title: String

	enum CodingKeys: String, CodingKey {
		case key = "key"
		case title = "title"
	}
}
