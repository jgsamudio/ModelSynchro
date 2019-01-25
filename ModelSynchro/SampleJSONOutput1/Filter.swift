//
//  Filter.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Filter: Codable {
	let displayName: String
	let parameter: String

	enum CodingKeys: String, CodingKey {
		case displayName = "displayName"
		case parameter = "parameter"
	}
}
