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
            print("warning: colorMatched key is not found")
            throw APIError.noDataRetreived
        }

        do {
            dependencies = try container.decode(Dependencies.self, forKey: .dependencies)
        } catch {
            print("warning: dependencies key is not found")
            throw APIError.noDataRetreived
        }

        do {
            device = try container.decode(Device.self, forKey: .device)
        } catch {
            print("warning: device key is not found")
            throw APIError.noDataRetreived
        }

        do {
            objects = try container.decode(Objects.self, forKey: .objects)
        } catch {
            print("warning: objects key is not found")
            throw APIError.noDataRetreived
        }

        do {
            propertyAccessControl = try container.decode(String.self, forKey: .propertyAccessControl)
        } catch {
            print("warning: propertyAccessControl key is not found")
            throw APIError.noDataRetreived
        }

        do {
            targetRuntime = try container.decode(String.self, forKey: .targetRuntime)
        } catch {
            print("warning: targetRuntime key is not found")
            throw APIError.noDataRetreived
        }

        do {
            toolsVersion = try container.decode(String.self, forKey: .toolsVersion)
        } catch {
            print("warning: toolsVersion key is not found")
            throw APIError.noDataRetreived
        }

        do {
            type = try container.decode(String.self, forKey: .type)
        } catch {
            print("warning: type key is not found")
            throw APIError.noDataRetreived
        }

        do {
            useAutolayout = try container.decode(String.self, forKey: .useAutolayout)
        } catch {
            print("warning: useAutolayout key is not found")
            throw APIError.noDataRetreived
        }

        do {
            useSafeAreas = try container.decode(String.self, forKey: .useSafeAreas)
        } catch {
            print("warning: useSafeAreas key is not found")
            throw APIError.noDataRetreived
        }

        do {
            useTraitCollections = try container.decode(String.self, forKey: .useTraitCollections)
        } catch {
            print("warning: useTraitCollections key is not found")
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
