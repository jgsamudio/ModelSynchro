//
//  AddTransponderRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct AddTransponderRequest: Codable {
	let number: String?
	let properties: Propertie?
	let type: String?

	enum CodingKeys: String, CodingKey {
		case number = "number"
		case properties = "properties"
		case type = "type"
	}
}
