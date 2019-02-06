//
//  Account.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Account: Codable {
	let accountId: String
	let balance: Balance
	let default: Bool
	let isBlocked: Bool
	let name: String
	let paymentMethods: [PaymentMethod]
	let status: String
	let transponders: [Transponder]
	let vehicles: [Vehicle]
	let properties: Propertie?
	let type: String?

	enum CodingKeys: String, CodingKey {
		case accountId = "accountId"
		case balance = "balance"
		case default = "default"
		case isBlocked = "isBlocked"
		case name = "name"
		case paymentMethods = "paymentMethods"
		case properties = "properties"
		case status = "status"
		case transponders = "transponders"
		case type = "type"
		case vehicles = "vehicles"
	}
}
