//
//  Model.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Model: Codable {
	let modelId: String
	let name: String

	enum CodingKeys: String, CodingKey {
		case modelId = "modelId"
		case name = "name"
	}
}
