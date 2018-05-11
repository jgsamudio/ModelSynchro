//
//  Filter.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 05/11/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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
