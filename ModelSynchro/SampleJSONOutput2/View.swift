//
//  View.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct View: Codable {
	let autoresizingMask: AutoresizingMask // let autoresizingMask: AutoresizingMask
	let color: Color
	let constraints: Constraints
	let contentMode: String
	let id: String
	let rect: Rect
	let subviews: Subviews
	let viewLayoutGuide: ViewLayoutGuide

	enum CodingKeys: String, CodingKey {
		case autoresizingMask = "autoresizingMask"
		case color = "color"
		case constraints = "constraints"
		case contentMode = "contentMode"
		case id = "id"
		case rect = "rect"
		case subviews = "subviews"
		case viewLayoutGuide = "viewLayoutGuide"
	}
}
