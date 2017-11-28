//
//  Products.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Products: Codable {
	let totalProductCount: Int
	let sort: String
	let sharing: Sharing?
	let imageLink: ImageLink?
	let topLine: String?
	let moreColors: String?
	let briefNumber: Int?
	let note: String?
	let rating: Rating?
	let pricing: Pricing?
	let flag: Flag?
	let categories: [Categories]?
	let productLink: ProductLink?
	let identity: Int?
	let isMatrix: Int?
	let type: String?
	let brand: Brand?
	let callouts: [Callouts]?
	let flexpay: String?
	let products: [Products]?
	let nextTake: Int?
	let nextSkip: Int?
}