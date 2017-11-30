//
//  PricingDetail.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/30/17.
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
}