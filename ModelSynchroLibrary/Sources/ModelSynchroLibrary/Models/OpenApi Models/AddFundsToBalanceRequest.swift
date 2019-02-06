//
//  AddFundsToBalanceRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct AddFundsToBalanceRequest: Codable {
	let amount: Int?
	let properties: Propertie?
	let type: String?

	enum CodingKeys: String, CodingKey {
		case amount = "amount"
		case properties = "properties"
		case type = "type"
	}
}
