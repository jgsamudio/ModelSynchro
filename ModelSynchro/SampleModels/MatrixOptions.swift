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
		case jsonProductZoomUrls = "jsonProductZoomUrls"
		case previewUrl = "previewUrl"
		case productUrl = "productUrl"
		case hasHsnSizeChart = "hasHsnSizeChart"
		case thumbnailUrl = "thumbnailUrl"
		case productImageUrlWithToken = "productImageUrlWithToken"
		case price = "price"
		case optionDescription = "optionDescription"
		case productId = "productId"
		case productDescription = "productDescription"
		case productImageUrl = "productImageUrl"
		case images = "images"
		case pricingDetail = "pricingDetail"
		case productOptions = "productOptions"
		case itemNumber = "itemNumber"
		case oldPrice = "oldPrice"
		case tabs = "tabs"
		case autoship = "autoship"
		case autoshipInformation = "autoshipInformation"
	}
}