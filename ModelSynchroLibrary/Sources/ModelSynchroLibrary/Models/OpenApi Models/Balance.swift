//
//  Balance.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Balance: Codable {
	let balance: Double
	let paymentScheme: PaymentScheme
	let pendingBalance: Double
	let example: Double?
	let type: String?
	let $ref: String?

	enum CodingKeys: String, CodingKey {
		case $ref = "$ref"
		case balance = "balance"
		case example = "example"
		case paymentScheme = "paymentScheme"
		case pendingBalance = "pendingBalance"
		case type = "type"
	}
}
