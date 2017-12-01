//
//  MatrixOptions.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct MatrixOptions: Codable {
	let autoship: Autoship?
	let autoshipInformation: String?
	let hasHsnSizeChart: Bool
	let images: [Images]?
	let itemNumber: String?
	let jsonProductZoomUrls: String
	let oldPrice: OldPrice?
	let optionDescription: String
	let previewUrl: String
	let price: Price
	let pricingDetail: PricingDetail?
	let productDescription: String
	let productId: Int
	let productImageUrl: String
	let productImageUrlWithToken: String
	let productOptions: ProductOptions?
	let productUrl: String
	let tabs: [Tabs]?
	let thumbnailUrl: String

	enum CodingKeys: String, CodingKey {
		case autoship = "autoship"
		case autoshipInformation = "autoshipInformation"
		case hasHsnSizeChart = "hasHsnSizeChart"
		case images = "images"
		case itemNumber = "itemNumber"
		case jsonProductZoomUrls = "jsonProductZoomUrls"
		case oldPrice = "oldPrice"
		case optionDescription = "optionDescription"
		case previewUrl = "previewUrl"
		case price = "price"
		case pricingDetail = "pricingDetail"
		case productDescription = "productDescription"
		case productId = "productId"
		case productImageUrl = "productImageUrl"
		case productImageUrlWithToken = "productImageUrlWithToken"
		case productOptions = "productOptions"
		case productUrl = "productUrl"
		case tabs = "tabs"
		case thumbnailUrl = "thumbnailUrl"
	}
}