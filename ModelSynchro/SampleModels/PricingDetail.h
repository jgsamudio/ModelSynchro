//
//  PricingDetail.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>
#import "PaymentOptions.h"

@interface PricingDetail: NSObject

@property (nonatomic, assign) bool isMatrixFlexPayAvailable;

@property (nonatomic, assign) double priceHoursRemaining;

@property (nonatomic, strong) NSArray<PaymentOptions *> *paymentOptions;

@property (nonatomic, strong) NSString *oldPrice;

@property (nonatomic, strong) NSString *paymentType;

@property (nonatomic, strong) NSString *price;

@property (nonatomic, strong) NSString *vipPaymentMessage;

@property (nonatomic, strong) NSString *youSave;

@property (nonatomic, strong, nullable) NSString *extraFlexPromotionId;

@property (nonatomic, strong, nullable) NSString *shippingAndHandling;

@property (nonatomic, strong, nullable) NSString *shippingAndHandlingLabel;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end