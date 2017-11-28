//
//  Product.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
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
	let matrixGroups: MatrixGroups
	let id: Int
	let benefits: [Benefits]
	let pricing: Pricing
	let productOptions: ProductOptions
	let name: String
	let itemNumber: String
	let disclaimers: [Disclaimers]
	let productLink: ProductLink
	let ratingAggregates: [RatingAggregates]
	let categories: [Categories]
	let overview: String
	let variantInfo: [VariantInfo]
	let brand: Brand
	let warrantyCollection: [WarrantyCollection]
	let sharing: Sharing
	let isInMatrix: Int
	let images: [Images]
	let isSoldOut: Int
	let matrixOptions: [MatrixOptions]
	let note: String
	let tabs: [Tabs]
	let pricingDetail: PricingDetail
	let slug: String
	let rating: Rating
	let isMatrixTextOnly: Int
	let howToUse: [HowToUse]
	let overviewHtml: String
	let autoship: Autoship?
	let flag: Flag?
	let autoshipInformation: String?
	let matrixLabel: String?
}