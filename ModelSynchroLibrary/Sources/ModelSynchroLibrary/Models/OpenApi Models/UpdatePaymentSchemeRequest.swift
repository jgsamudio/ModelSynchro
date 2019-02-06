//
//  UpdatePaymentSchemeRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct UpdatePaymentSchemeRequest: Codable {
	let amountToAdd: Bool?
	let threshold: Bool
	let properties: Propertie?
	let type: String?

	enum CodingKeys: String, CodingKey {
		case amountToAdd = "amountToAdd"
		case properties = "properties"
		case threshold = "threshold"
		case type = "type"
	}
}
