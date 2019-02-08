//
//  Account.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/08/19.
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

	enum CodingKeys: String, CodingKey {
		case accountId = "accountId"
		case balance = "balance"
		case default = "default"
		case isBlocked = "isBlocked"
		case name = "name"
		case paymentMethods = "paymentMethods"
		case status = "status"
		case transponders = "transponders"
		case vehicles = "vehicles"
	}
}
