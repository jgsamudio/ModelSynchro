//
//  ContentRaw.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/16/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct ContentRaw: Codable {
	let content: String
	let linkType: Bool

	enum CodingKeys: String, CodingKey {
		case content = "content"
		case linkType = "linkType"
	}
}