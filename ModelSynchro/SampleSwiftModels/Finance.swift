//
//  Finance.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Finance: Codable {
	let amount: Int
	let balanceAmount: Int
	let description: String
	let time: String
	let type: String

	enum CodingKeys: String, CodingKey {
		case amount = "amount"
		case balanceAmount = "balanceAmount"
		case description = "description"
		case time = "time"
		case type = "type"
	}
}
