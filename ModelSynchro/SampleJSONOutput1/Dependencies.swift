//
//  Dependencies.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/13/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct Dependencies: Codable {
	let capability: Capability
	let deployment: Deployment
	let plugIn: PlugIn

	enum CodingKeys: String, CodingKey {
		case capability = "capability"
		case deployment = "deployment"
		case plugIn = "plugIn"
	}
}


extension Dependencies {

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Dependencies.CodingKeys.self)

        do {
            capability = try container.decode(Capability.self, forKey: .capability)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: capability key is not found!")
        }

        do {
            deployment = try container.decode(Deployment.self, forKey: .deployment)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: deployment key is not found!")
        }

        do {
            plugIn = try container.decode(PlugIn.self, forKey: .plugIn)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: plugIn key is not found!")
        }
	}
}