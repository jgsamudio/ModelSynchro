//
//  TollGantry.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/08/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct TollGantry: Codable {
	let latitude: Double
	let longitude: Double
	let name: String
	let tollGantryId: String

	enum CodingKeys: String, CodingKey {
		case latitude = "latitude"
		case longitude = "longitude"
		case name = "name"
		case tollGantryId = "tollGantryId"
	}
}
