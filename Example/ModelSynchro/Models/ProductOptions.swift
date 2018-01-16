//
//  ProductOptions.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/16/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct ProductOptions: Codable {
	let coolSizes: [Sizes] // let sizes: [Sizes]
	let swatches: [Swatches]
	let widths: [Widths]

	enum CodingKeys: String, CodingKey {
		case coolSizes = "sizes"
		case swatches = "swatches"
		case widths = "widths"
	}
}