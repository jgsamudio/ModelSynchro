//
//  Patch.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Patch: Codable {
	let operationId: String
	let parameters: [Parameter]
	let requestBody: RequestBody
	let responses: Response
	let summary: String
	let tags: [String]

	enum CodingKeys: String, CodingKey {
		case operationId = "operationId"
		case parameters = "parameters"
		case requestBody = "requestBody"
		case responses = "responses"
		case summary = "summary"
		case tags = "tags"
	}
}
