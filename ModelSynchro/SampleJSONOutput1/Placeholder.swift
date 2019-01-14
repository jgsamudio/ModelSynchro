//
//  Placeholder.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Placeholder: Codable {
	let customClass: String
	let id: String
	let placeholderIdentifier: String

	enum CodingKeys: String, CodingKey {
		case customClass = "customClass"
		case id = "id"
		case placeholderIdentifier = "placeholderIdentifier"
	}
}
