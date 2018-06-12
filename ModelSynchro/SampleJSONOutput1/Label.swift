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
            print("warning: adjustsFontSizeToFit key is not found")
            throw APIError.noDataRetreived
        }

        do {
            baselineAdjustment = try container.decode(String.self, forKey: .baselineAdjustment)
        } catch {
            print("warning: baselineAdjustment key is not found")
            throw APIError.noDataRetreived
        }

        do {
            color = try container.decode(Color.self, forKey: .color)
        } catch {
            print("warning: color key is not found")
            throw APIError.noDataRetreived
        }

        do {
            contentMode = try container.decode(String.self, forKey: .contentMode)
        } catch {
            print("warning: contentMode key is not found")
            throw APIError.noDataRetreived
        }

        do {
            fontDescription = try container.decode(FontDescription.self, forKey: .fontDescription)
        } catch {
            print("warning: fontDescription key is not found")
            throw APIError.noDataRetreived
        }

        do {
            horizontalHuggingPriority = try container.decode(String.self, forKey: .horizontalHuggingPriority)
        } catch {
            print("warning: horizontalHuggingPriority key is not found")
            throw APIError.noDataRetreived
        }

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            print("warning: id key is not found")
            throw APIError.noDataRetreived
        }

        do {
            lineBreakMode = try container.decode(String.self, forKey: .lineBreakMode)
        } catch {
            print("warning: lineBreakMode key is not found")
            throw APIError.noDataRetreived
        }

        do {
            nil = try container.decode(Nil.self, forKey: .nil)
        } catch {
            print("warning: nil key is not found")
            throw APIError.noDataRetreived
        }

        do {
            opaque = try container.decode(String.self, forKey: .opaque)
        } catch {
            print("warning: opaque key is not found")
            throw APIError.noDataRetreived
        }

        do {
            rect = try container.decode(Rect.self, forKey: .rect)
        } catch {
            print("warning: rect key is not found")
            throw APIError.noDataRetreived
        }

        do {
            text = try container.decode(String.self, forKey: .text)
        } catch {
            print("warning: text key is not found")
            throw APIError.noDataRetreived
        }

        do {
            textAlignment = try container.decode(String.self, forKey: .textAlignment)
        } catch {
            print("warning: textAlignment key is not found")
            throw APIError.noDataRetreived
        }

        do {
            translatesAutoresizingMaskIntoConstraints = try container.decode(String.self, forKey: .translatesAutoresizingMaskIntoConstraints)
        } catch {
            print("warning: translatesAutoresizingMaskIntoConstraints key is not found")
            throw APIError.noDataRetreived
        }

        do {
            userInteractionEnabled = try container.decode(String.self, forKey: .userInteractionEnabled)
        } catch {
            print("warning: userInteractionEnabled key is not found")
            throw APIError.noDataRetreived
        }

        do {
            verticalHuggingPriority = try container.decode(String.self, forKey: .verticalHuggingPriority)
        } catch {
            print("warning: verticalHuggingPriority key is not found")
            throw APIError.noDataRetreived
        }
	}
}
