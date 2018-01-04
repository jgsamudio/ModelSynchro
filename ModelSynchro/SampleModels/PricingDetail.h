//
//  PricingDetail.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface PricingDetail

@property (nonatomic, strong, readonly) BOOL *isMatrixFlexPayAvailable;

@property (nonatomic, strong, readonly) NSArray<PaymentOptions> *paymentOptions;

@property (nonatomic, strong, readonly) NSString *oldPrice;

@property (nonatomic, strong, readonly) NSString *paymentType;

@property (nonatomic, strong, readonly) NSString *price;

@property (nonatomic, strong, readonly) NSString *shippingAndHandling;

@property (nonatomic, strong, readonly) NSString *vipPaymentMessage;

@property (nonatomic, strong, readonly) NSString *youSave;

@property (nonatomic, strong, readonly) double *priceHoursRemaining;

	enum CodingKeys: String, CodingKey {
		case isMatrixFlexPayAvailable = "isMatrixFlexPayAvailable"
		case oldPrice = "oldPrice"
		case paymentOptions = "paymentOptions"
		case paymentType = "paymentType"
		case price = "price"
		case priceHoursRemaining = "priceHoursRemaining"
		case shippingAndHandling = "shippingAndHandling"
		case vipPaymentMessage = "vipPaymentMessage"
		case youSave = "youSave"
	}
@end