//
//  Device.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Device: Codable {
	let adaptation: Adaptation
	let id: String
	let orientation: String

	enum CodingKeys: String, CodingKey {
		case adaptation = "adaptation"
		case id = "id"
		case orientation = "orientation"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Device.CodingKeys.self)

        do {
            adaptation = try container.decode(Adaptation.self, forKey: .adaptation)
        } catch {
            print("warning: adaptation key is not found")
            throw APIError.noDataRetreived
        }

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            print("warning: id key is not found")
            throw APIError.noDataRetreived
        }

        do {
            orientation = try container.decode(String.self, forKey: .orientation)
        } catch {
            print("warning: orientation key is not found")
            throw APIError.noDataRetreived
        }
	}
}
