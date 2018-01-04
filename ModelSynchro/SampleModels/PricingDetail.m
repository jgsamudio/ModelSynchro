//
//  PricingDetail.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "PricingDetail.h"

@implementation PricingDetail

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_extraFlexPromotionId = [dictionary[@"extraFlexPromotionId"] copy];
	_isMatrixFlexPayAvailable = [dictionary[@"isMatrixFlexPayAvailable"] boolValue];
	_oldPrice = [dictionary[@"oldPrice"] copy];
	_paymentOptions = [dictionary[@"paymentOptions"] copy];
	_paymentType = [dictionary[@"paymentType"] copy];
	_price = [dictionary[@"price"] copy];
	_priceHoursRemaining = [dictionary[@"priceHoursRemaining"] doubleValue];
	_shippingAndHandling = [dictionary[@"shippingAndHandling"] copy];
	_shippingAndHandlingLabel = [dictionary[@"shippingAndHandlingLabel"] copy];
	_vipPaymentMessage = [dictionary[@"vipPaymentMessage"] copy];
	_youSave = [dictionary[@"youSave"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_paymentOptions = [coder decodeObjectForKey:@"paymentOptions"];
	_priceHoursRemaining = [coder decodeDoubleForKey:@"priceHoursRemaining"];
	_youSave = [coder decodeObjectForKey:@"youSave"];
	_isMatrixFlexPayAvailable = [coder decodeBoolForKey:@"isMatrixFlexPayAvailable"];
	_paymentType = [coder decodeObjectForKey:@"paymentType"];
	_oldPrice = [coder decodeObjectForKey:@"oldPrice"];
	_price = [coder decodeObjectForKey:@"price"];
	_vipPaymentMessage = [coder decodeObjectForKey:@"vipPaymentMessage"];
	_shippingAndHandling = [coder decodeObjectForKey:@"shippingAndHandling"];
	_extraFlexPromotionId = [coder decodeObjectForKey:@"extraFlexPromotionId"];
	_shippingAndHandlingLabel = [coder decodeObjectForKey:@"shippingAndHandlingLabel"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.paymentOptions != nil) [coder encodeObject:self.paymentOptions forKey:@"paymentOptions"];
	[coder encodeDouble:self.priceHoursRemaining forKey:@"priceHoursRemaining"];
	if (self.youSave != nil) [coder encodeObject:self.youSave forKey:@"youSave"];
	[coder encodeBool:self.isMatrixFlexPayAvailable forKey:@"isMatrixFlexPayAvailable"];
	if (self.paymentType != nil) [coder encodeObject:self.paymentType forKey:@"paymentType"];
	if (self.oldPrice != nil) [coder encodeObject:self.oldPrice forKey:@"oldPrice"];
	if (self.price != nil) [coder encodeObject:self.price forKey:@"price"];
	if (self.vipPaymentMessage != nil) [coder encodeObject:self.vipPaymentMessage forKey:@"vipPaymentMessage"];
	if (self.shippingAndHandling != nil) [coder encodeObject:self.shippingAndHandling forKey:@"shippingAndHandling"];
	if (self.extraFlexPromotionId != nil) [coder encodeObject:self.extraFlexPromotionId forKey:@"extraFlexPromotionId"];
	if (self.shippingAndHandlingLabel != nil) [coder encodeObject:self.shippingAndHandlingLabel forKey:@"shippingAndHandlingLabel"];
}

@end