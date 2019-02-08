//
//  ProviderAuthenticationInformation.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/08/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct ProviderAuthenticationInformation: Codable {
	let email: String
	let providerName: String
	let providerToken: String

	enum CodingKeys: String, CodingKey {
		case email = "email"
		case providerName = "providerName"
		case providerToken = "providerToken"
	}
}
