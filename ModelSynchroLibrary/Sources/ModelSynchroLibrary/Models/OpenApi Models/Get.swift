//
//  Get.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Get: Codable {
	let operationId: String
	let parameters: [Parameter]
	let responses: Response
	let summary: String
	let tags: [String]
	let description: String?

	enum CodingKeys: String, CodingKey {
		case description = "description"
		case operationId = "operationId"
		case parameters = "parameters"
		case responses = "responses"
		case summary = "summary"
		case tags = "tags"
	}
}
