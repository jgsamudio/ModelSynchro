//
//  SortOption.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct SortOption: Codable {
	let items: Item
	let type: String

	enum CodingKeys: String, CodingKey {
		case items = "items"
		case type = "type"
	}
}
