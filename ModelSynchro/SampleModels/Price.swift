//
//  Price.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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