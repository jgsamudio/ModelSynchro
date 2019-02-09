//
//  AddVehicleRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct AddVehicleRequest: Codable {
	let color: String
	let country: String
	let isLicensePlateTemporary: Bool
	let isWindshieldMetalized: Bool
	let licensePlate: String
	let licensePlateExpirationDate: String
	let licensePlateNumberType: String
	let make: String
	let model: String
	let nickName: String
	let state: String
	let vehicleClass: String
	let year: String

	enum CodingKeys: String, CodingKey {
		case color = "color"
		case country = "country"
		case isLicensePlateTemporary = "isLicensePlateTemporary"
		case isWindshieldMetalized = "isWindshieldMetalized"
		case licensePlate = "licensePlate"
		case licensePlateExpirationDate = "licensePlateExpirationDate"
		case licensePlateNumberType = "licensePlateNumberType"
		case make = "make"
		case model = "model"
		case nickName = "nickName"
		case state = "state"
		case vehicleClass = "vehicleClass"
		case year = "year"
	}
}
