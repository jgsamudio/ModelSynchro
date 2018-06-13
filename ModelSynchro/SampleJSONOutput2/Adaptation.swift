//
//  Adaptation.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct Adaptation: Codable {
	let id: String

	enum CodingKeys: String, CodingKey {
		case id = "id"
	}
}


extension Adaptation {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Adaptation.CodingKeys.self)

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: id key is not found!")
        }
	}
}