//
//  ProductOptions.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct ProductOptions: Codable {
	let sizes: [Sizes]
	let swatches: [Swatches]
	let widths: [Widths]

	enum CodingKeys: String, CodingKey {
		case sizes = "sizes"
		case swatches = "swatches"
		case widths = "widths"
	}
}