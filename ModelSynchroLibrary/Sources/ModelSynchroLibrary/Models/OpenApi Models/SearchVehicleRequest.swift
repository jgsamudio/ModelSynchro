//
//  SearchVehicleRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct SearchVehicleRequest: Codable {
	let licensePlateNumber: String?
	let state: String
	let properties: Propertie?
	let type: String?

	enum CodingKeys: String, CodingKey {
		case licensePlateNumber = "licensePlateNumber"
		case properties = "properties"
		case state = "state"
		case type = "type"
	}
}
