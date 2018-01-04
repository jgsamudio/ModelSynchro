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

@interface PricingDetail: NSObject

@property (nonatomic, strong, readonly) BOOL *isMatrixFlexPayAvailable;

@property (nonatomic, strong, readonly) NSArray<PaymentOptions> *paymentOptions;

@property (nonatomic, strong, readonly) NSString *extraFlexPromotionId;

@property (nonatomic, strong, readonly) NSString *oldPrice;

@property (nonatomic, strong, readonly) NSString *paymentType;

@property (nonatomic, strong, readonly) NSString *price;

@property (nonatomic, strong, readonly) NSString *shippingAndHandling;

@property (nonatomic, strong, readonly) NSString *shippingAndHandlingLabel;

@property (nonatomic, strong, readonly) NSString *vipPaymentMessage;

@property (nonatomic, strong, readonly) NSString *youSave;

@property (nonatomic, strong, readonly) double *priceHoursRemaining;

- (id)initWithDictionary:(NSDictionary *)dictionary

@end