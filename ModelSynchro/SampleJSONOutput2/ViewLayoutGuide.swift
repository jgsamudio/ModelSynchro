//
//  ViewLayoutGuide.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct ViewLayoutGuide: Codable {
	let id: String
	let key: String

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case key = "key"
	}
}


extension ViewLayoutGuide {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: ViewLayoutGuide.CodingKeys.self)

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: id key is not found!")
        }

        do {
            key = try container.decode(String.self, forKey: .key)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: key key is not found!")
        }
	}
}