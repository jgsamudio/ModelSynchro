//
//  Vehicle.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/08/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Vehicle: Codable {
	let bluetoothId: String
	let color: String
	let country: String
	let imageUrl: String
	let isLicensePlateTemporary: Bool
	let isWindshieldMetalized: Bool
	let licensePlate: String
	let licensePlateExpirationDate: String
	let licensePlateNumberType: String
	let make: String
	let model: String
	let nickName: String
	let state: String
	let transponderId: String
	let vehicleClass: String
	let vehicleId: String
	let year: String

	enum CodingKeys: String, CodingKey {
		case bluetoothId = "bluetoothId"
		case color = "color"
		case country = "country"
		case imageUrl = "imageUrl"
		case isLicensePlateTemporary = "isLicensePlateTemporary"
		case isWindshieldMetalized = "isWindshieldMetalized"
		case licensePlate = "licensePlate"
		case licensePlateExpirationDate = "licensePlateExpirationDate"
		case licensePlateNumberType = "licensePlateNumberType"
		case make = "make"
		case model = "model"
		case nickName = "nickName"
		case state = "state"
		case transponderId = "transponderId"
		case vehicleClass = "vehicleClass"
		case vehicleId = "vehicleId"
		case year = "year"
	}
}
