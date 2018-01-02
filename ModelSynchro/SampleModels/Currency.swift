//
//  Currency.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/02/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Currency: Codable {
	let isoCode: String
	let name: String
	let symbol: String

	enum CodingKeys: String, CodingKey {
		case isoCode = "isoCode"
		case name = "name"
		case symbol = "symbol"
	}
}