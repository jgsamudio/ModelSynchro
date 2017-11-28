//
//  PricingDetail.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct PricingDetail: Codable {
	let paymentOptions: [PaymentOptions]
	let price: String
	let isMatrixFlexPayAvailable: Int
	let paymentType: String
	let extraFlexPromotionId: String
	let vipPaymentMessage: String
	let shippingAndHandlingLabel: String
}