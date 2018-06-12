//
//  PlugIn.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct PlugIn: Codable {
	let identifier: String
	let version: String

	enum CodingKeys: String, CodingKey {
		case identifier = "identifier"
		case version = "version"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: PlugIn.CodingKeys.self)

        do {
            identifier = try container.decode(String.self, forKey: .identifier)
        } catch {
            print("warning: identifier key is not found")
            throw APIError.noDataRetreived
        }

        do {
            version = try container.decode(String.self, forKey: .version)
        } catch {
            print("warning: version key is not found")
            throw APIError.noDataRetreived
        }
	}
}
