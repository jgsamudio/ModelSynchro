//
//  Constraint.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 03/29/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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