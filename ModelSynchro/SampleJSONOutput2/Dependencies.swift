//
//  Dependencies.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/16/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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