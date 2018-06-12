//
//  Constraints.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Constraints: Codable {
	let constraint: Constraint

	enum CodingKeys: String, CodingKey {
		case constraint = "constraint"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Constraints.CodingKeys.self)

        do {
            constraint = try container.decode(Constraint.self, forKey: .constraint)
        } catch {
            print("warning: constraint key is not found")
            throw APIError.noDataRetreived
        }
	}
}
