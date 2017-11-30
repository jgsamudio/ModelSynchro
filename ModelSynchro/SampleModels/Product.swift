//
//  Product.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/30/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Product: Codable {
	let autoship: Autoship?
	let autoshipInformation: String?
	let benefits: [String]
	let brand: Brand
	let callouts: [Callouts]
	let categories: [Categories]
	let disclaimers: [Disclaimers]
	let flag: Flag
	let hasHsnSizeChart: Bool
	let howToUse: [HowToUse]
	let id: Int
	let images: [Images]
	let isInMatrix: Bool
	let isMatrixTextOnly: Bool
	let isPersonalizable: Bool
	let isSoldOut: Bool
	let itemNumber: String
	let matrixGroups: MatrixGroups
	let matrixId: Int
	let matrixLabel: String
	let matrixOptions: [MatrixOptions]
	let name: String
	let note: String
	let overview: String
	let overviewHtml: String
	let pricing: Pricing
	let pricingDetail: PricingDetail
	let productLabel: ProductLabel
	let productLink: ProductLink
	let productOptions: ProductOptions
	let promotions: [Promotions]
	let rating: Rating
	let ratingAggregates: [RatingAggregates]
	let sharing: Sharing
	let shortName: String
	let slug: String
	let tabs: [Tabs]
	let videos: [Videos]
	let warrantyCollection: [WarrantyCollection]
}