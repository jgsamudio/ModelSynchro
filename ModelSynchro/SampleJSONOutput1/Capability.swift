//
//  Capability.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Capability: Codable {
	let minToolsVersion: String
	let name: String

	enum CodingKeys: String, CodingKey {
		case minToolsVersion = "minToolsVersion"
		case name = "name"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Capability.CodingKeys.self)

        do {
            minToolsVersion = try container.decode(String.self, forKey: .minToolsVersion)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: minToolsVersion key is not found!")
        }

        do {
            name = try container.decode(String.self, forKey: .name)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: name key is not found!")
        }
	}
}
