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

	self.extraFlexPromotionId = [dictionary[@"extraFlexPromotionId"] copy];
	self.isMatrixFlexPayAvailable = [dictionary[@"isMatrixFlexPayAvailable"] boolValue];
	self.oldPrice = [dictionary[@"oldPrice"] copy];
	self.paymentOptions = [dictionary[@"paymentOptions"] copy];
	self.paymentType = [dictionary[@"paymentType"] copy];
	self.price = [dictionary[@"price"] copy];
	self.priceHoursRemaining = [dictionary[@"priceHoursRemaining"] doubleValue];
	self.shippingAndHandling = [dictionary[@"shippingAndHandling"] copy];
	self.shippingAndHandlingLabel = [dictionary[@"shippingAndHandlingLabel"] copy];
	self.vipPaymentMessage = [dictionary[@"vipPaymentMessage"] copy];
	self.youSave = [dictionary[@"youSave"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.paymentOptions = [coder decodeObjectForKey:@"paymentOptions"];
	self.priceHoursRemaining = [coder decodeDoubleForKey:@"priceHoursRemaining"];
	self.youSave = [coder decodeObjectForKey:@"youSave"];
	self.isMatrixFlexPayAvailable = [coder decodeBoolForKey:@"isMatrixFlexPayAvailable"];
	self.paymentType = [coder decodeObjectForKey:@"paymentType"];
	self.oldPrice = [coder decodeObjectForKey:@"oldPrice"];
	self.price = [coder decodeObjectForKey:@"price"];
	self.vipPaymentMessage = [coder decodeObjectForKey:@"vipPaymentMessage"];
	self.shippingAndHandling = [coder decodeObjectForKey:@"shippingAndHandling"];
	self.extraFlexPromotionId = [coder decodeObjectForKey:@"extraFlexPromotionId"];
	self.shippingAndHandlingLabel = [coder decodeObjectForKey:@"shippingAndHandlingLabel"];

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