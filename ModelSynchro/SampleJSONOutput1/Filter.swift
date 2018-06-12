//
//  Filter.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Filter: Codable {
	let displayName: String
	let parameter: String

	enum CodingKeys: String, CodingKey {
		case displayName = "displayName"
		case parameter = "parameter"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Filter.CodingKeys.self)

        do {
            displayName = try container.decode(String.self, forKey: .displayName)
        } catch {
            print("warning: displayName key is not found")
            throw APIError.noDataRetreived
        }

        do {
            parameter = try container.decode(String.self, forKey: .parameter)
        } catch {
            print("warning: parameter key is not found")
            throw APIError.noDataRetreived
        }
	}
}