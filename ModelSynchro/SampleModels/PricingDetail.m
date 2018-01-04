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

@implementation PricingDetail

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_isMatrixFlexPayAvailable = [dictionary[@"isMatrixFlexPayAvailable"] copy];
	_oldPrice = [dictionary[@"oldPrice"] copy];
	_paymentOptions = [dictionary[@"paymentOptions"] copy];
	_paymentType = [dictionary[@"paymentType"] copy];
	_price = [dictionary[@"price"] copy];
	_priceHoursRemaining = [dictionary[@"priceHoursRemaining"] copy];
	_shippingAndHandling = [dictionary[@"shippingAndHandling"] copy];
	_vipPaymentMessage = [dictionary[@"vipPaymentMessage"] copy];
	_youSave = [dictionary[@"youSave"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_paymentType = [coder decodeObjectForKey:@"paymentType"];
	_vipPaymentMessage = [coder decodeObjectForKey:@"vipPaymentMessage"];
	_paymentOptions = [coder decodeObjectForKey:@"paymentOptions"];
	_shippingAndHandling = [coder decodeObjectForKey:@"shippingAndHandling"];
	_price = [coder decodeObjectForKey:@"price"];
	_isMatrixFlexPayAvailable = [coder decodeObjectForKey:@"isMatrixFlexPayAvailable"];
	_priceHoursRemaining = [coder decodeObjectForKey:@"priceHoursRemaining"];
	_youSave = [coder decodeObjectForKey:@"youSave"];
	_oldPrice = [coder decodeObjectForKey:@"oldPrice"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.paymentType != nil) [coder encodeObject:self.paymentType forKey:@"paymentType"];
	if (self.vipPaymentMessage != nil) [coder encodeObject:self.vipPaymentMessage forKey:@"vipPaymentMessage"];
	if (self.paymentOptions != nil) [coder encodeObject:self.paymentOptions forKey:@"paymentOptions"];
	if (self.shippingAndHandling != nil) [coder encodeObject:self.shippingAndHandling forKey:@"shippingAndHandling"];
	if (self.price != nil) [coder encodeObject:self.price forKey:@"price"];
	if (self.isMatrixFlexPayAvailable != nil) [coder encodeObject:self.isMatrixFlexPayAvailable forKey:@"isMatrixFlexPayAvailable"];
	if (self.priceHoursRemaining != nil) [coder encodeObject:self.priceHoursRemaining forKey:@"priceHoursRemaining"];
	if (self.youSave != nil) [coder encodeObject:self.youSave forKey:@"youSave"];
	if (self.oldPrice != nil) [coder encodeObject:self.oldPrice forKey:@"oldPrice"];
}

@end