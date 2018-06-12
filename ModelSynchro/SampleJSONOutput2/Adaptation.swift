//
//  Adaptation.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
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

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Adaptation.CodingKeys.self)

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: id key is not found!")
        }
	}
}
