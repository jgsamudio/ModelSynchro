//
//  Button.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Button: Codable {
	let buttonType: String
	let contentHorizontalAlignment: String
	let contentMode: String
	let contentVerticalAlignment: String
	let id: String
	let lineBreakMode: String
	let opaque: String
	let rect: Rect
	let state: State
	let translatesAutoresizingMaskIntoConstraints: String

	enum CodingKeys: String, CodingKey {
		case buttonType = "buttonType"
		case contentHorizontalAlignment = "contentHorizontalAlignment"
		case contentMode = "contentMode"
		case contentVerticalAlignment = "contentVerticalAlignment"
		case id = "id"
		case lineBreakMode = "lineBreakMode"
		case opaque = "opaque"
		case rect = "rect"
		case state = "state"
		case translatesAutoresizingMaskIntoConstraints = "translatesAutoresizingMaskIntoConstraints"
	}
}