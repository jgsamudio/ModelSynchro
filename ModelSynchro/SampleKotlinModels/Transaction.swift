//
//  Transaction.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/08/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Transaction: Codable {
	let discountedPrice: Double
	let isConfirmed: Bool
	let isPeakHours: Bool
	let price: Double
	let time: String
	let tollGantry: TollGantry
	let transactionId: String
	let transponder: Transponder
	let vehicle: Vehicle

	enum CodingKeys: String, CodingKey {
		case discountedPrice = "discountedPrice"
		case isConfirmed = "isConfirmed"
		case isPeakHours = "isPeakHours"
		case price = "price"
		case time = "time"
		case tollGantry = "tollGantry"
		case transactionId = "transactionId"
		case transponder = "transponder"
		case vehicle = "vehicle"
	}
}
