//
//  Rect.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Rect: Codable {
	let height: String
	let key: String
	let width: String
	let x: String
	let y: String

	enum CodingKeys: String, CodingKey {
		case height = "height"
		case key = "key"
		case width = "width"
		case x = "x"
		case y = "y"
	}
}
