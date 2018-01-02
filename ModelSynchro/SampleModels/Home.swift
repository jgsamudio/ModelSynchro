//
//  Home.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/02/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Home: Codable {
	let categories: [Categories]
	let promotions: [Promotions]

	enum CodingKeys: String, CodingKey {
		case categories = "categories"
		case promotions = "promotions"
	}
}