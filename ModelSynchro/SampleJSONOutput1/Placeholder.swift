//
//  Placeholder.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct Placeholder: Codable {
	let customClass: String
	let id: String
	let placeholderIdentifier: String

	enum CodingKeys: String, CodingKey {
		case customClass = "customClass"
		case id = "id"
		case placeholderIdentifier = "placeholderIdentifier"
	}
}


extension Placeholder {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Placeholder.CodingKeys.self)

        do {
            customClass = try container.decode(String.self, forKey: .customClass)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: customClass key is not found!")
        }

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: id key is not found!")
        }

        do {
            placeholderIdentifier = try container.decode(String.self, forKey: .placeholderIdentifier)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: placeholderIdentifier key is not found!")
        }
	}
}