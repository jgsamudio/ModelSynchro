//
//  Constraint.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Constraint: Codable {
	let firstAttribute: String
	let firstItem: String
	let id: String
	let secondAttribute: String
	let secondItem: String

	enum CodingKeys: String, CodingKey {
		case firstAttribute = "firstAttribute"
		case firstItem = "firstItem"
		case id = "id"
		case secondAttribute = "secondAttribute"
		case secondItem = "secondItem"
	}
}
