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
	let isPrimary: Bool?
	let paymentMethodId: String?
	let paymentObject: PaymentObject?
	let type: String?
	let error: String?

	enum CodingKeys: String, CodingKey {
		case error = "error"
		case isPrimary = "isPrimary"
		case paymentMethodId = "paymentMethodId"
		case paymentObject = "paymentObject"
		case type = "type"
	}
}