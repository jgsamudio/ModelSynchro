//
//  User.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct User: Codable {
	let properties: Propertie
	let type: String
	let xml: Xml

	enum CodingKeys: String, CodingKey {
		case properties = "properties"
		case type = "type"
		case xml = "xml"
	}
}
