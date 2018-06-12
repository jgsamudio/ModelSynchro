//
//  View.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct View: Codable {
	let autoresizingMask: AutoresizingMask // let autoresizingMask: AutoresizingMask
	let color: Color
	let constraints: Constraints
	let contentMode: String
	let id: String
	let rect: Rect
	let subviews: Subviews
	let viewLayoutGuide: ViewLayoutGuide

	enum CodingKeys: String, CodingKey {
		case autoresizingMask = "autoresizingMask"
		case color = "color"
		case constraints = "constraints"
		case contentMode = "contentMode"
		case id = "id"
		case rect = "rect"
		case subviews = "subviews"
		case viewLayoutGuide = "viewLayoutGuide"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: View.CodingKeys.self)

        do {
            autoresizingMask = try container.decode(AutoresizingMask.self, forKey: .autoresizingMask)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: autoresizingMask key is not found!")
        }

        do {
            color = try container.decode(Color.self, forKey: .color)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: color key is not found!")
        }

        do {
            constraints = try container.decode(Constraints.self, forKey: .constraints)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: constraints key is not found!")
        }

        do {
            contentMode = try container.decode(String.self, forKey: .contentMode)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: contentMode key is not found!")
        }

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: id key is not found!")
        }

        do {
            rect = try container.decode(Rect.self, forKey: .rect)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: rect key is not found!")
        }

        do {
            subviews = try container.decode(Subviews.self, forKey: .subviews)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: subviews key is not found!")
        }

        do {
            viewLayoutGuide = try container.decode(ViewLayoutGuide.self, forKey: .viewLayoutGuide)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: viewLayoutGuide key is not found!")
        }
	}
}
