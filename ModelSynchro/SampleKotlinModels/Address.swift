//
//  Address.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Address: Codable {
	let address1: String
	let address2: String
	let addressId: String
	let city: String
	let country: String
	let postalCode: String
	let state: String

	enum CodingKeys: String, CodingKey {
		case address1 = "address1"
		case address2 = "address2"
		case addressId = "addressId"
		case city = "city"
		case country = "country"
		case postalCode = "postalCode"
		case state = "state"
	}
}
