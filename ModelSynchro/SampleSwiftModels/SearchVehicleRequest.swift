//
//  SearchVehicleRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct SearchVehicleRequest: Codable {
	let licensePlateNumber: String
	let state: String

	enum CodingKeys: String, CodingKey {
		case licensePlateNumber = "licensePlateNumber"
		case state = "state"
	}
}
