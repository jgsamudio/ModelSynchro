//
//  UpdateVehicleRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct UpdateVehicleRequest: Codable {
	let bluetoothId: String?
	let color: String
	let country: String?
	let isLicensePlateTemporary: Bool?
	let isWindshieldMetalized: Bool?
	let licensePlate: String
	let licensePlateExpirationDate: String
	let licensePlateNumberType: String?
	let make: String?
	let model: String?
	let nickName: String?
	let paymentMethodId: String?
	let state: String?
	let transponderId: String?
	let vehicleClass: String
	let year: String
	let properties: Propertie?
	let type: String?

	enum CodingKeys: String, CodingKey {
		case bluetoothId = "bluetoothId"
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
		case paymentMethodId = "paymentMethodId"
		case properties = "properties"
		case state = "state"
		case transponderId = "transponderId"
		case type = "type"
		case vehicleClass = "vehicleClass"
		case year = "year"
	}
}
