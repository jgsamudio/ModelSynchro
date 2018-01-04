//
//  MatrixOptions.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "MatrixOptions.h"

@implementation MatrixOptions

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.autoship = [dictionary[@"autoship"] copy];
	self.autoshipInformation = [dictionary[@"autoshipInformation"] copy];
	self.hasHsnSizeChart = [dictionary[@"hasHsnSizeChart"] boolValue];
	self.images = [dictionary[@"images"] copy];
	self.itemNumber = [dictionary[@"itemNumber"] copy];
	self.jsonProductZoomUrls = [dictionary[@"jsonProductZoomUrls"] copy];
	self.oldPrice = [dictionary[@"oldPrice"] copy];
	self.optionDescription = [dictionary[@"optionDescription"] copy];
	self.previewUrl = [dictionary[@"previewUrl"] copy];
	self.price = [dictionary[@"price"] copy];
	self.pricingDetail = [dictionary[@"pricingDetail"] copy];
	self.productDescription = [dictionary[@"productDescription"] copy];
	self.productId = [dictionary[@"productId"] integerValue];
	self.productImageUrl = [dictionary[@"productImageUrl"] copy];
	self.productImageUrlWithToken = [dictionary[@"productImageUrlWithToken"] copy];
	self.productOptions = [dictionary[@"productOptions"] copy];
	self.productUrl = [dictionary[@"productUrl"] copy];
	self.retailPrice = [dictionary[@"retailPrice"] copy];
	self.retailPriceLabel = [dictionary[@"retailPriceLabel"] copy];
	self.tabs = [dictionary[@"tabs"] copy];
	self.thumbnailUrl = [dictionary[@"thumbnailUrl"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.retailPrice = [coder decodeObjectForKey:@"retailPrice"];
	self.images = [coder decodeObjectForKey:@"images"];
	self.thumbnailUrl = [coder decodeObjectForKey:@"thumbnailUrl"];
	self.hasHsnSizeChart = [coder decodeBoolForKey:@"hasHsnSizeChart"];
	self.retailPriceLabel = [coder decodeObjectForKey:@"retailPriceLabel"];
	self.productId = [coder decodeIntegerForKey:@"productId"];
	self.productDescription = [coder decodeObjectForKey:@"productDescription"];
	self.productUrl = [coder decodeObjectForKey:@"productUrl"];
	self.pricingDetail = [coder decodeObjectForKey:@"pricingDetail"];
	self.previewUrl = [coder decodeObjectForKey:@"previewUrl"];
	self.optionDescription = [coder decodeObjectForKey:@"optionDescription"];
	self.productOptions = [coder decodeObjectForKey:@"productOptions"];
	self.jsonProductZoomUrls = [coder decodeObjectForKey:@"jsonProductZoomUrls"];
	self.productImageUrlWithToken = [coder decodeObjectForKey:@"productImageUrlWithToken"];
	self.itemNumber = [coder decodeObjectForKey:@"itemNumber"];
	self.price = [coder decodeObjectForKey:@"price"];
	self.oldPrice = [coder decodeObjectForKey:@"oldPrice"];
	self.tabs = [coder decodeObjectForKey:@"tabs"];
	self.productImageUrl = [coder decodeObjectForKey:@"productImageUrl"];
	self.autoship = [coder decodeObjectForKey:@"autoship"];
	self.autoshipInformation = [coder decodeObjectForKey:@"autoshipInformation"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.retailPrice != nil) [coder encodeObject:self.retailPrice forKey:@"retailPrice"];
	if (self.images != nil) [coder encodeObject:self.images forKey:@"images"];
	if (self.thumbnailUrl != nil) [coder encodeObject:self.thumbnailUrl forKey:@"thumbnailUrl"];
	[coder encodeBool:self.hasHsnSizeChart forKey:@"hasHsnSizeChart"];
	if (self.retailPriceLabel != nil) [coder encodeObject:self.retailPriceLabel forKey:@"retailPriceLabel"];
	[coder encodeInteger:self.productId forKey:@"productId"];
	if (self.productDescription != nil) [coder encodeObject:self.productDescription forKey:@"productDescription"];
	if (self.productUrl != nil) [coder encodeObject:self.productUrl forKey:@"productUrl"];
	if (self.pricingDetail != nil) [coder encodeObject:self.pricingDetail forKey:@"pricingDetail"];
	if (self.previewUrl != nil) [coder encodeObject:self.previewUrl forKey:@"previewUrl"];
	if (self.optionDescription != nil) [coder encodeObject:self.optionDescription forKey:@"optionDescription"];
	if (self.productOptions != nil) [coder encodeObject:self.productOptions forKey:@"productOptions"];
	if (self.jsonProductZoomUrls != nil) [coder encodeObject:self.jsonProductZoomUrls forKey:@"jsonProductZoomUrls"];
	if (self.productImageUrlWithToken != nil) [coder encodeObject:self.productImageUrlWithToken forKey:@"productImageUrlWithToken"];
	if (self.itemNumber != nil) [coder encodeObject:self.itemNumber forKey:@"itemNumber"];
	if (self.price != nil) [coder encodeObject:self.price forKey:@"price"];
	if (self.oldPrice != nil) [coder encodeObject:self.oldPrice forKey:@"oldPrice"];
	if (self.tabs != nil) [coder encodeObject:self.tabs forKey:@"tabs"];
	if (self.productImageUrl != nil) [coder encodeObject:self.productImageUrl forKey:@"productImageUrl"];
	if (self.autoship != nil) [coder encodeObject:self.autoship forKey:@"autoship"];
	if (self.autoshipInformation != nil) [coder encodeObject:self.autoshipInformation forKey:@"autoshipInformation"];
}

@end