//
//  Button.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct Button: Codable {
	let buttonType: String
	let contentHorizontalAlignment: String
	let contentMode: String
	let contentVerticalAlignment: String
	let id: String
	let lineBreakMode: String
	let opaque: String
	let rect: Rect
	let state: State
	let translatesAutoresizingMaskIntoConstraints: String

	enum CodingKeys: String, CodingKey {
		case buttonType = "buttonType"
		case contentHorizontalAlignment = "contentHorizontalAlignment"
		case contentMode = "contentMode"
		case contentVerticalAlignment = "contentVerticalAlignment"
		case id = "id"
		case lineBreakMode = "lineBreakMode"
		case opaque = "opaque"
		case rect = "rect"
		case state = "state"
		case translatesAutoresizingMaskIntoConstraints = "translatesAutoresizingMaskIntoConstraints"
	}
}


extension Button {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Button.CodingKeys.self)

        do {
            buttonType = try container.decode(String.self, forKey: .buttonType)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: buttonType key is not found!")
        }

        do {
            contentHorizontalAlignment = try container.decode(String.self, forKey: .contentHorizontalAlignment)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: contentHorizontalAlignment key is not found!")
        }

        do {
            contentMode = try container.decode(String.self, forKey: .contentMode)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: contentMode key is not found!")
        }

        do {
            contentVerticalAlignment = try container.decode(String.self, forKey: .contentVerticalAlignment)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: contentVerticalAlignment key is not found!")
        }

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: id key is not found!")
        }

        do {
            lineBreakMode = try container.decode(String.self, forKey: .lineBreakMode)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: lineBreakMode key is not found!")
        }

        do {
            opaque = try container.decode(String.self, forKey: .opaque)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: opaque key is not found!")
        }

        do {
            rect = try container.decode(Rect.self, forKey: .rect)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: rect key is not found!")
        }

        do {
            state = try container.decode(State.self, forKey: .state)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: state key is not found!")
        }

        do {
            translatesAutoresizingMaskIntoConstraints = try container.decode(String.self, forKey: .translatesAutoresizingMaskIntoConstraints)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: translatesAutoresizingMaskIntoConstraints key is not found!")
        }
	}
}