//
//  VehicleColor.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct VehicleColor: Codable {
	let colorId: String
	let name: String

	enum CodingKeys: String, CodingKey {
		case colorId = "colorId"
		case name = "name"
	}
}
