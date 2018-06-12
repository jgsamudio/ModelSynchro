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
            print("warning: autoresizingMask key is not found")
            throw APIError.noDataRetreived
        }

        do {
            color = try container.decode(Color.self, forKey: .color)
        } catch {
            print("warning: color key is not found")
            throw APIError.noDataRetreived
        }

        do {
            constraints = try container.decode(Constraints.self, forKey: .constraints)
        } catch {
            print("warning: constraints key is not found")
            throw APIError.noDataRetreived
        }

        do {
            contentMode = try container.decode(String.self, forKey: .contentMode)
        } catch {
            print("warning: contentMode key is not found")
            throw APIError.noDataRetreived
        }

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            print("warning: id key is not found")
            throw APIError.noDataRetreived
        }

        do {
            rect = try container.decode(Rect.self, forKey: .rect)
        } catch {
            print("warning: rect key is not found")
            throw APIError.noDataRetreived
        }

        do {
            subviews = try container.decode(Subviews.self, forKey: .subviews)
        } catch {
            print("warning: subviews key is not found")
            throw APIError.noDataRetreived
        }

        do {
            viewLayoutGuide = try container.decode(ViewLayoutGuide.self, forKey: .viewLayoutGuide)
        } catch {
            print("warning: viewLayoutGuide key is not found")
            throw APIError.noDataRetreived
        }
	}
}
