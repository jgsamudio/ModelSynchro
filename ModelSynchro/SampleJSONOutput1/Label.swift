//
//  Label.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct Label: Codable {
	let adjustsFontSizeToFit: String
	let baselineAdjustment: String
	let color: Color
	let contentMode: String
	let fontDescription: FontDescription
	let horizontalHuggingPriority: String
	let id: String
	let lineBreakMode: String
	let nil: Nil
	let opaque: String
	let rect: Rect
	let text: String
	let textAlignment: String
	let translatesAutoresizingMaskIntoConstraints: String
	let userInteractionEnabled: String
	let verticalHuggingPriority: String

	enum CodingKeys: String, CodingKey {
		case adjustsFontSizeToFit = "adjustsFontSizeToFit"
		case baselineAdjustment = "baselineAdjustment"
		case color = "color"
		case contentMode = "contentMode"
		case fontDescription = "fontDescription"
		case horizontalHuggingPriority = "horizontalHuggingPriority"
		case id = "id"
		case lineBreakMode = "lineBreakMode"
		case nil = "nil"
		case opaque = "opaque"
		case rect = "rect"
		case text = "text"
		case textAlignment = "textAlignment"
		case translatesAutoresizingMaskIntoConstraints = "translatesAutoresizingMaskIntoConstraints"
		case userInteractionEnabled = "userInteractionEnabled"
		case verticalHuggingPriority = "verticalHuggingPriority"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Label.CodingKeys.self)

        do {
            adjustsFontSizeToFit = try container.decode(String.self, forKey: .adjustsFontSizeToFit)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: adjustsFontSizeToFit key is not found!")
        }

        do {
            baselineAdjustment = try container.decode(String.self, forKey: .baselineAdjustment)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: baselineAdjustment key is not found!")
        }

        do {
            color = try container.decode(Color.self, forKey: .color)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: color key is not found!")
        }

        do {
            contentMode = try container.decode(String.self, forKey: .contentMode)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: contentMode key is not found!")
        }

        do {
            fontDescription = try container.decode(FontDescription.self, forKey: .fontDescription)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: fontDescription key is not found!")
        }

        do {
            horizontalHuggingPriority = try container.decode(String.self, forKey: .horizontalHuggingPriority)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: horizontalHuggingPriority key is not found!")
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
            nil = try container.decode(Nil.self, forKey: .nil)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: nil key is not found!")
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
            text = try container.decode(String.self, forKey: .text)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: text key is not found!")
        }

        do {
            textAlignment = try container.decode(String.self, forKey: .textAlignment)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: textAlignment key is not found!")
        }

        do {
            translatesAutoresizingMaskIntoConstraints = try container.decode(String.self, forKey: .translatesAutoresizingMaskIntoConstraints)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: translatesAutoresizingMaskIntoConstraints key is not found!")
        }

        do {
            userInteractionEnabled = try container.decode(String.self, forKey: .userInteractionEnabled)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: userInteractionEnabled key is not found!")
        }

        do {
            verticalHuggingPriority = try container.decode(String.self, forKey: .verticalHuggingPriority)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: verticalHuggingPriority key is not found!")
        }
	}
}
