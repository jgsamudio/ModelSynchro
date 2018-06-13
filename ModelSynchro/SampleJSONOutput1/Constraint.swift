//
//  Constraint.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct Constraint: Codable {
	let firstAttribute: String
	let firstItem: String
	let id: String
	let secondAttribute: String
	let secondItem: String

	enum CodingKeys: String, CodingKey {
		case firstAttribute = "firstAttribute"
		case firstItem = "firstItem"
		case id = "id"
		case secondAttribute = "secondAttribute"
		case secondItem = "secondItem"
	}
}


extension Constraint {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Constraint.CodingKeys.self)

        do {
            firstAttribute = try container.decode(String.self, forKey: .firstAttribute)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: firstAttribute key is not found!")
        }

        do {
            firstItem = try container.decode(String.self, forKey: .firstItem)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: firstItem key is not found!")
        }

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: id key is not found!")
        }

        do {
            secondAttribute = try container.decode(String.self, forKey: .secondAttribute)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: secondAttribute key is not found!")
        }

        do {
            secondItem = try container.decode(String.self, forKey: .secondItem)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: secondItem key is not found!")
        }
	}
}