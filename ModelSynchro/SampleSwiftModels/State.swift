//
//  State.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct State: Codable {
	let name: String
	let stateCode: String

	enum CodingKeys: String, CodingKey {
		case name = "name"
		case stateCode = "stateCode"
	}
}
