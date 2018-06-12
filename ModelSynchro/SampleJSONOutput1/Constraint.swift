//
//  Constraint.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

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

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Constraint.CodingKeys.self)

        do {
            firstAttribute = try container.decode(String.self, forKey: .firstAttribute)
        } catch {
            print("warning: firstAttribute key is not found")
            throw APIError.noDataRetreived
        }

        do {
            firstItem = try container.decode(String.self, forKey: .firstItem)
        } catch {
            print("warning: firstItem key is not found")
            throw APIError.noDataRetreived
        }

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            print("warning: id key is not found")
            throw APIError.noDataRetreived
        }

        do {
            secondAttribute = try container.decode(String.self, forKey: .secondAttribute)
        } catch {
            print("warning: secondAttribute key is not found")
            throw APIError.noDataRetreived
        }

        do {
            secondItem = try container.decode(String.self, forKey: .secondItem)
        } catch {
            print("warning: secondItem key is not found")
            throw APIError.noDataRetreived
        }
	}
}
