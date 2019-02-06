//
//  Info.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Info: Codable {
	let contact: Contact
	let description: String
	let license: License
	let termsOfService: String
	let title: String
	let version: String

	enum CodingKeys: String, CodingKey {
		case contact = "contact"
		case description = "description"
		case license = "license"
		case termsOfService = "termsOfService"
		case title = "title"
		case version = "version"
	}
}
