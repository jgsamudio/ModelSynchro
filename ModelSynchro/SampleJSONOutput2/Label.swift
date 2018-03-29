//
//  Label.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 03/29/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Label: Codable {
	let adjustsFontSizeToFit: String
	let baselineAdjustment: String
	let color: Color
	let contentMode: String
	let fontDescription: FontDescription
	let horizontalHuggingPriority: String
	let id: String
	let lineBreakMode: String
	let nil: Nil
	let opaque: String
	let rect: Rect
	let text: String
	let textAlignment: String
	let translatesAutoresizingMaskIntoConstraints: String
	let userInteractionEnabled: String
	let verticalHuggingPriority: String

	enum CodingKeys: String, CodingKey {
		case adjustsFontSizeToFit = "adjustsFontSizeToFit"
		case baselineAdjustment = "baselineAdjustment"
		case color = "color"
		case contentMode = "contentMode"
		case fontDescription = "fontDescription"
		case horizontalHuggingPriority = "horizontalHuggingPriority"
		case id = "id"
		case lineBreakMode = "lineBreakMode"
		case nil = "nil"
		case opaque = "opaque"
		case rect = "rect"
		case text = "text"
		case textAlignment = "textAlignment"
		case translatesAutoresizingMaskIntoConstraints = "translatesAutoresizingMaskIntoConstraints"
		case userInteractionEnabled = "userInteractionEnabled"
		case verticalHuggingPriority = "verticalHuggingPriority"
	}
}