//
//  Registration.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/14/19.
//  Copyright © 2019 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Registration: Codable {
	let response: Response
	let status: String

	enum CodingKeys: String, CodingKey {
		case response = "response"
		case status = "status"
	}
}
