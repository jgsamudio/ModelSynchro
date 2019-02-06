//
//  AddPaymentMethodRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct AddPaymentMethodRequest: Codable {
	let token: String?
	let properties: Propertie?
	let type: String?

	enum CodingKeys: String, CodingKey {
		case properties = "properties"
		case token = "token"
		case type = "type"
	}
}
