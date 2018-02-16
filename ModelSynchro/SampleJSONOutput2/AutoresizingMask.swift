//
//  AutoresizingMask.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/16/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct AutoresizingMask: Codable {
	let heightSizable: String
	let key: String
	let widthSizable: String

	enum CodingKeys: String, CodingKey {
		case heightSizable = "heightSizable"
		case key = "key"
		case widthSizable = "widthSizable"
	}
}