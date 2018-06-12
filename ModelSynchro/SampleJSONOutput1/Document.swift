//
//  Document.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

import ModelSynchro

struct Document: Codable {
	let colorMatched: String
	let dependencies: Dependencies
	let device: Device
	let objects: Objects
	let propertyAccessControl: String
	let targetRuntime: String
	let toolsVersion: String
	let type: String
	let useAutolayout: String
	let useSafeAreas: String
	let useTraitCollections: String
	let version: String

	enum CodingKeys: String, CodingKey {
		case colorMatched = "colorMatched"
		case dependencies = "dependencies"
		case device = "device"
		case objects = "objects"
		case propertyAccessControl = "propertyAccessControl"
		case targetRuntime = "targetRuntime"
		case toolsVersion = "toolsVersion"
		case type = "type"
		case useAutolayout = "useAutolayout"
		case useSafeAreas = "useSafeAreas"
		case useTraitCollections = "useTraitCollections"
		case version = "version"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Document.CodingKeys.self)

        do {
            colorMatched = try container.decode(String.self, forKey: .colorMatched)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: colorMatched key is not found!")
        }

        do {
            dependencies = try container.decode(Dependencies.self, forKey: .dependencies)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: dependencies key is not found!")
        }

        do {
            device = try container.decode(Device.self, forKey: .device)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: device key is not found!")
        }

        do {
            objects = try container.decode(Objects.self, forKey: .objects)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: objects key is not found!")
        }

        do {
            propertyAccessControl = try container.decode(String.self, forKey: .propertyAccessControl)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: propertyAccessControl key is not found!")
        }

        do {
            targetRuntime = try container.decode(String.self, forKey: .targetRuntime)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: targetRuntime key is not found!")
        }

        do {
            toolsVersion = try container.decode(String.self, forKey: .toolsVersion)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: toolsVersion key is not found!")
        }

        do {
            type = try container.decode(String.self, forKey: .type)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: type key is not found!")
        }

        do {
            useAutolayout = try container.decode(String.self, forKey: .useAutolayout)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: useAutolayout key is not found!")
        }

        do {
            useSafeAreas = try container.decode(String.self, forKey: .useSafeAreas)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: useSafeAreas key is not found!")
        }

        do {
            useTraitCollections = try container.decode(String.self, forKey: .useTraitCollections)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: useTraitCollections key is not found!")
        }

        do {
            version = try container.decode(String.self, forKey: .version)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound(description: "error: version key is not found!")
        }
	}
}
