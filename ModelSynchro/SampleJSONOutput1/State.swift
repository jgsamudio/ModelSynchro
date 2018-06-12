//
//  State.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct State: Codable {
	let key: String
	let title: String

	enum CodingKeys: String, CodingKey {
		case key = "key"
		case title = "title"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: State.CodingKeys.self)

        do {
            key = try container.decode(String.self, forKey: .key)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: key key is not found!")
        }

        do {
            title = try container.decode(String.self, forKey: .title)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: title key is not found!")
        }
	}
}
