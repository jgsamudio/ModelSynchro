//
//  Hotspots.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

struct Hotspots: Codable {
	let name: String
	let coordinates: [String : String]
	let type: String
	let url: String
}