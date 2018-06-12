//
//  Nil.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct Nil: Codable {
	let key: String

	enum CodingKeys: String, CodingKey {
		case key = "key"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Nil.CodingKeys.self)

        do {
            key = try container.decode(String.self, forKey: .key)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: key key is not found!")
        }
	}
}
