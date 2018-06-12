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

import ModelSynchro

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
            throw ModelSynchroDecoderError.keyNotFound("error: adaptation key is not found!")
        }

        do {
            id = try container.decode(String.self, forKey: .id)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: id key is not found!")
        }

        do {
            orientation = try container.decode(String.self, forKey: .orientation)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: orientation key is not found!")
        }
	}
}
