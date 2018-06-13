//
//  AutoresizingMask.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct AutoresizingMask: Codable {
	let heightSizable: String
	let key: String
	let widthSizable: String

	enum CodingKeys: String, CodingKey {
		case heightSizable = "heightSizable"
		case key = "key"
		case widthSizable = "widthSizable"
	}
}


extension AutoresizingMask {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: AutoresizingMask.CodingKeys.self)

        do {
            heightSizable = try container.decode(String.self, forKey: .heightSizable)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: heightSizable key is not found!")
        }

        do {
            key = try container.decode(String.self, forKey: .key)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: key key is not found!")
        }

        do {
            widthSizable = try container.decode(String.self, forKey: .widthSizable)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: widthSizable key is not found!")
        }
	}
}