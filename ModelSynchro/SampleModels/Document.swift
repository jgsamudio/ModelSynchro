//
//  Document.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/12/18.
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
}