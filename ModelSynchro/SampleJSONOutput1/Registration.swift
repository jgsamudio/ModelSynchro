//
//  Registration.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 05/14/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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
