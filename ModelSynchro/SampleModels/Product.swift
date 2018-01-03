//
//  Product.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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

	enum CodingKeys: String, CodingKey {
		case autoship = "autoship"
		case autoshipInformation = "autoshipInformation"
		case benefits = "benefits"
		case brand = "brand"
		case callouts = "callouts"
		case categories = "categories"
		case disclaimers = "disclaimers"
		case flag = "flag"
		case hasHsnSizeChart = "hasHsnSizeChart"
		case howToUse = "howToUse"
		case id = "id"
		case images = "images"
		case isInMatrix = "isInMatrix"
		case isMatrixTextOnly = "isMatrixTextOnly"
		case isPersonalizable = "isPersonalizable"
		case isSoldOut = "isSoldOut"
		case itemNumber = "itemNumber"
		case matrixGroups = "matrixGroups"
		case matrixId = "matrixId"
		case matrixLabel = "matrixLabel"
		case matrixOptions = "matrixOptions"
		case name = "name"
		case note = "note"
		case overview = "overview"
		case overviewHtml = "overviewHtml"
		case pricing = "pricing"
		case pricingDetail = "pricingDetail"
		case productLabel = "productLabel"
		case productLink = "productLink"
		case productOptions = "productOptions"
		case promotions = "promotions"
		case rating = "rating"
		case ratingAggregates = "ratingAggregates"
		case sharing = "sharing"
		case shortName = "shortName"
		case slug = "slug"
		case tabs = "tabs"
		case videos = "videos"
		case warrantyCollection = "warrantyCollection"
	}
}
