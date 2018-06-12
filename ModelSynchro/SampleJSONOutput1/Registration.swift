//
//  Registration.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
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

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Registration.CodingKeys.self)

        do {
            response = try container.decode(Response.self, forKey: .response)
        } catch {
            print("warning: response key is not found")
            throw APIError.noDataRetreived
        }

        do {
            status = try container.decode(String.self, forKey: .status)
        } catch {
            print("warning: status key is not found")
            throw APIError.noDataRetreived
        }
	}
}