//
//  PaymentObject.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct PaymentObject: Codable {
	let accountNumber: String
	let bankName: String
	let cardType: String
	let expirationMonth: Bool
	let expirationYear: Int
	let lastFourDigits: String
	let name: String
	let routingNumber: String

	enum CodingKeys: String, CodingKey {
		case accountNumber = "accountNumber"
		case bankName = "bankName"
		case cardType = "cardType"
		case expirationMonth = "expirationMonth"
		case expirationYear = "expirationYear"
		case lastFourDigits = "lastFourDigits"
		case name = "name"
		case routingNumber = "routingNumber"
	}
}
