//
//  Transponder.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/08/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Transponder: Codable {
	let number: String
	let tollingAgencyName: String
	let transponderId: String

	enum CodingKeys: String, CodingKey {
		case number = "number"
		case tollingAgencyName = "tollingAgencyName"
		case transponderId = "transponderId"
	}
}
