//
//  Subviews.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Subviews: Codable {
	let button: Button
	let label: Label

	enum CodingKeys: String, CodingKey {
		case button = "button"
		case label = "label"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Subviews.CodingKeys.self)

        do {
            button = try container.decode(Button.self, forKey: .button)
        } catch {
            print("warning: button key is not found")
            throw APIError.noDataRetreived
        }

        do {
            label = try container.decode(Label.self, forKey: .label)
        } catch {
            print("warning: label key is not found")
            throw APIError.noDataRetreived
        }
	}
}
