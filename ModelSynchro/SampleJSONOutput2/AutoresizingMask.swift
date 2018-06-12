//
//  AutoresizingMask.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct AutoresizingMask: Codable {
	let heightSizable: String
	let key: String
	let widthSizable: String

	enum CodingKeys: String, CodingKey {
		case heightSizable = "heightSizable"
		case key = "key"
		case widthSizable = "widthSizable"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: AutoresizingMask.CodingKeys.self)

        do {
            heightSizable = try container.decode(String.self, forKey: .heightSizable)
        } catch {
            print("warning: heightSizable key is not found")
            throw APIError.noDataRetreived
        }

        do {
            key = try container.decode(String.self, forKey: .key)
        } catch {
            print("warning: key key is not found")
            throw APIError.noDataRetreived
        }

        do {
            widthSizable = try container.decode(String.self, forKey: .widthSizable)
        } catch {
            print("warning: widthSizable key is not found")
            throw APIError.noDataRetreived
        }
	}
}
