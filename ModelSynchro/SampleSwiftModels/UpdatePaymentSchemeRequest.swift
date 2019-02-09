//
//  UpdatePaymentSchemeRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct UpdatePaymentSchemeRequest: Codable {
	let amountToAdd: Int
	let threshold: Int

	enum CodingKeys: String, CodingKey {
		case amountToAdd = "amountToAdd"
		case threshold = "threshold"
	}
}
