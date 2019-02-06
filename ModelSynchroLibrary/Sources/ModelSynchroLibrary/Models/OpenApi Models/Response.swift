//
//  Response.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Response: Codable {
	let unauthorizedError: UnauthorizedError?
	let 200: 200?
	let 400: 400?
	let 401: 401?
	let 404: 404?
	let 204: 204?
	let 405: 405?

	enum CodingKeys: String, CodingKey {
		case 200 = "200"
		case 204 = "204"
		case 400 = "400"
		case 401 = "401"
		case 404 = "404"
		case 405 = "405"
		case unauthorizedError = "unauthorizedError"
	}
}
