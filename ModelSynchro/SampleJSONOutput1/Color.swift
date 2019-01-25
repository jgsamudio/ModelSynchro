//
//  Color.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Color: Codable {
	let alpha: String
	let blue: String
	let colorSpace: String
	let customColorSpace: String
	let green: String
	let key: String
	let red: String

	enum CodingKeys: String, CodingKey {
		case alpha = "alpha"
		case blue = "blue"
		case colorSpace = "colorSpace"
		case customColorSpace = "customColorSpace"
		case green = "green"
		case key = "key"
		case red = "red"
	}
}
