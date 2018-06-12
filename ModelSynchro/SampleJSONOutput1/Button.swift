//
//  Button.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

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

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Button.CodingKeys.self)

        do {
            buttonType = try container.decode(String.self, forKey: .buttonType)
        } catch {
            print("warning: buttonType key is not found")
            throw APIError.noDataRetreived
        }

        do {
            contentHorizontalAlignment = try container.decode(String.self, forKey: .contentHorizontalAlignment)
        } catch {
            print("warning: contentHorizontalAlignment key is not found")
            throw APIError.noDataRetreived
        }

        do {
            contentMode = try container.decode(String.self, forKey: .contentMode)
        } catch {
            print("warning: contentMode key is not found")
            throw APIError.noDataRetreived
        }

        do {
            contentVerticalAlignment = try container.decode(String.self, forKey: .contentVerticalAlignment)
        } catch {
            print("warning: contentVerticalAlignment key is not found")
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
            state = try container.decode(State.self, forKey: .state)
        } catch {
            print("warning: state key is not found")
            throw APIError.noDataRetreived
        }

        do {
            translatesAutoresizingMaskIntoConstraints = try container.decode(String.self, forKey: .translatesAutoresizingMaskIntoConstraints)
        } catch {
            print("warning: translatesAutoresizingMaskIntoConstraints key is not found")
            throw APIError.noDataRetreived
        }
	}
}
