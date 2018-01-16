//
//  HowToUse.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/16/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct HowToUse: Codable {
	let dosageCount: String
	let dosageHtml: String
	let dosageType: String

	enum CodingKeys: String, CodingKey {
		case dosageCount = "dosageCount"
		case dosageHtml = "dosageHtml"
		case dosageType = "dosageType"
	}
}