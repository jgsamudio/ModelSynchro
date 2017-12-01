//
//  Price.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Price: Codable {
	let amount: Amount

	enum CodingKeys: String, CodingKey {
		case amount = "amount"
	}
}