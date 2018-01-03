//
//  Amount.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Amount: Codable {
	let currency: Currency
	let value: Double

	enum CodingKeys: String, CodingKey {
		case currency = "currency"
		case value = "value"
	}
}