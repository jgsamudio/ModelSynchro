//
//  Product.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Product: Codable {
	let callouts: [Callouts]
	let hasHsnSizeChart: Int
	let shortName: String
	let videos: [Videos]
	let promotions: [Promotions]
	let matrixId: Int
	let isPersonalizable: Int
	let id: Int
	let benefits: [Benefits]
	let pricing: [String : String]
	let productOptions: [String : [Value]]
	let name: String
	let itemNumber: String
	let disclaimers: [Disclaimers]
	let productLink: [String : Int]
	let inventory: [String : Int]
	let ratingAggregates: [RatingAggregates]
	let overview: String
	let categories: [Categories]
	let variantInfo: [VariantInfo]
	let brand: [String : String]
	let warrantyCollection: [WarrantyCollection]
	let flag: [String : String]
	let sharing: [String : Int]
	let isInMatrix: Int
	let images: [Images]
	let isSoldOut: Int
	let matrixOptions: [MatrixOptions]
	let note: String
	let tabs: [Tabs]
	let pricingDetail: [String : [Value]]
	let slug: String
	let rating: [String : Int]
	let isMatrixTextOnly: Int
	let howToUse: [HowToUse]
	let overviewHtml: String
	let autoship: [String : String]?
	let autoshipInformation: String?
	let matrixLabel: String?
}