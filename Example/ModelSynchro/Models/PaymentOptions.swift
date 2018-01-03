//
//  PaymentOptions.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct PaymentOptions: Codable {
	let amount: String
	let isExtraFlex: Bool
	let number: Int?

	enum CodingKeys: String, CodingKey {
		case amount = "amount"
		case isExtraFlex = "isExtraFlex"
		case number = "number"
	}
}