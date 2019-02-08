//
//  Balance.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/08/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Balance: Codable {
	let balance: Double
	let paymentScheme: PaymentScheme
	let pendingBalance: Double

	enum CodingKeys: String, CodingKey {
		case balance = "balance"
		case paymentScheme = "paymentScheme"
		case pendingBalance = "pendingBalance"
	}
}
