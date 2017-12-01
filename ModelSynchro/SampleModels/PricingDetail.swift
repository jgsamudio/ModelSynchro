//
//  PricingDetail.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct PricingDetail: Codable {
	let isMatrixFlexPayAvailable: Bool
	let oldPrice: String?
	let paymentOptions: [PaymentOptions]
	let paymentType: String
	let price: String
	let shippingAndHandling: String
	let vipPaymentMessage: String
	let youSave: String?

	enum CodingKeys: String, CodingKey {
		case isMatrixFlexPayAvailable = "isMatrixFlexPayAvailable"
		case oldPrice = "oldPrice"
		case paymentOptions = "paymentOptions"
		case paymentType = "paymentType"
		case price = "price"
		case shippingAndHandling = "shippingAndHandling"
		case vipPaymentMessage = "vipPaymentMessage"
		case youSave = "youSave"
	}
}