//
//  Placeholder.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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