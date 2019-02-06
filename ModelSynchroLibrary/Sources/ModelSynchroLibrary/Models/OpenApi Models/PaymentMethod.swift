//
//  PaymentMethod.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct PaymentMethod: Codable {
	let isPrimary: Bool
	let paymentMethodId: String
	let paymentObject: PaymentObject
	let type: String
	let items: Item?

	enum CodingKeys: String, CodingKey {
		case isPrimary = "isPrimary"
		case items = "items"
		case paymentMethodId = "paymentMethodId"
		case paymentObject = "paymentObject"
		case type = "type"
	}
}
