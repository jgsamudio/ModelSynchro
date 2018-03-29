//
//  Rect.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 03/29/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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