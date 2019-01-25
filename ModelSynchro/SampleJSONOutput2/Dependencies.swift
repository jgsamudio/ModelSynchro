//
//  Dependencies.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Dependencies: Codable {
	let capability: Capability
	let deployment: Deployment
	let plugIn: PlugIn

	enum CodingKeys: String, CodingKey {
		case capability = "capability"
		case deployment = "deployment"
		case plugIn = "plugIn"
	}
}
