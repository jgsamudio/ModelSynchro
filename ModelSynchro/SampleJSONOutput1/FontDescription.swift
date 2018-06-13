//
//  FontDescription.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct FontDescription: Codable {
	let key: String
	let pointSize: String
	let type: String

	enum CodingKeys: String, CodingKey {
		case key = "key"
		case pointSize = "pointSize"
		case type = "type"
	}
}


extension FontDescription {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: FontDescription.CodingKeys.self)

        do {
            key = try container.decode(String.self, forKey: .key)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: key key is not found!")
        }

        do {
            pointSize = try container.decode(String.self, forKey: .pointSize)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: pointSize key is not found!")
        }

        do {
            type = try container.decode(String.self, forKey: .type)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: type key is not found!")
        }
	}
}