//
//  Flag.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Flag: Codable {
	let className: String
	let isSoldOut: Bool
	let isTodaysSpecial: Bool
	let name: String

	enum CodingKeys: String, CodingKey {
		case className = "className"
		case isSoldOut = "isSoldOut"
		case isTodaysSpecial = "isTodaysSpecial"
		case name = "name"
	}
}