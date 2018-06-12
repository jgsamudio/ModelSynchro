//
//  Dependencies.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Dependencies: Codable {
	let capability: Capability
	let deployment: Deployment
	let plugIn: PlugIn

	enum CodingKeys: String, CodingKey {
		case capability = "capability"
		case deployment = "deployment"
		case plugIn = "plugIn"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Dependencies.CodingKeys.self)

        do {
            capability = try container.decode(Capability.self, forKey: .capability)
        } catch {
            print("warning: capability key is not found")
            throw APIError.noDataRetreived
        }

        do {
            deployment = try container.decode(Deployment.self, forKey: .deployment)
        } catch {
            print("warning: deployment key is not found")
            throw APIError.noDataRetreived
        }

        do {
            plugIn = try container.decode(PlugIn.self, forKey: .plugIn)
        } catch {
            print("warning: plugIn key is not found")
            throw APIError.noDataRetreived
        }
	}
}
