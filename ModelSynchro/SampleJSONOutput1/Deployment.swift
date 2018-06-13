//
//  Deployment.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct Deployment: Codable {
	let identifier: String

	enum CodingKeys: String, CodingKey {
		case identifier = "identifier"
	}
}


extension Deployment {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Deployment.CodingKeys.self)

        do {
            identifier = try container.decode(String.self, forKey: .identifier)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: identifier key is not found!")
        }
	}
}