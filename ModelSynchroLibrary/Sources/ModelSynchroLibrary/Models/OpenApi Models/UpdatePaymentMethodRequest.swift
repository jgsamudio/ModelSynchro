//
//  UpdatePaymentMethodRequest.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct UpdatePaymentMethodRequest: Codable {
	let isPrimary: Bool?
	let properties: Propertie?
	let type: String?

	enum CodingKeys: String, CodingKey {
		case isPrimary = "isPrimary"
		case properties = "properties"
		case type = "type"
	}
}
