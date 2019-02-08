//
//  PaymentScheme.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/08/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct PaymentScheme: Codable {
	let amountToAdd: Int
	let paymentSchemeId: String
	let threshold: Int
	let type: String

	enum CodingKeys: String, CodingKey {
		case amountToAdd = "amountToAdd"
		case paymentSchemeId = "paymentSchemeId"
		case threshold = "threshold"
		case type = "type"
	}
}
