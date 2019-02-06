//
//  Statement.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Statement: Codable {
	let error: String?
	let properties: Propertie?
	let type: String?

	enum CodingKeys: String, CodingKey {
		case error = "error"
		case properties = "properties"
		case type = "type"
	}
}
