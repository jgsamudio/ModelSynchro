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

	_autoship = [dictionary[@"autoship"] copy];
	_autoshipInformation = [dictionary[@"autoshipInformation"] copy];
	_hasHsnSizeChart = [dictionary[@"hasHsnSizeChart"] boolValue];
	_images = [dictionary[@"images"] copy];
	_itemNumber = [dictionary[@"itemNumber"] copy];
	_jsonProductZoomUrls = [dictionary[@"jsonProductZoomUrls"] copy];
	_oldPrice = [dictionary[@"oldPrice"] copy];
	_optionDescription = [dictionary[@"optionDescription"] copy];
	_previewUrl = [dictionary[@"previewUrl"] copy];
	_price = [dictionary[@"price"] copy];
	_pricingDetail = [dictionary[@"pricingDetail"] copy];
	_productDescription = [dictionary[@"productDescription"] copy];
	_productId = [dictionary[@"productId"] integerValue];
	_productImageUrl = [dictionary[@"productImageUrl"] copy];
	_productImageUrlWithToken = [dictionary[@"productImageUrlWithToken"] copy];
	_productOptions = [dictionary[@"productOptions"] copy];
	_productUrl = [dictionary[@"productUrl"] copy];
	_retailPrice = [dictionary[@"retailPrice"] copy];
	_retailPriceLabel = [dictionary[@"retailPriceLabel"] copy];
	_tabs = [dictionary[@"tabs"] copy];
	_thumbnailUrl = [dictionary[@"thumbnailUrl"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_retailPrice = [coder decodeObjectForKey:@"retailPrice"];
	_images = [coder decodeObjectForKey:@"images"];
	_thumbnailUrl = [coder decodeObjectForKey:@"thumbnailUrl"];
	_hasHsnSizeChart = [coder decodeBoolForKey:@"hasHsnSizeChart"];
	_retailPriceLabel = [coder decodeObjectForKey:@"retailPriceLabel"];
	_productId = [coder decodeIntegerForKey:@"productId"];
	_productDescription = [coder decodeObjectForKey:@"productDescription"];
	_productUrl = [coder decodeObjectForKey:@"productUrl"];
	_pricingDetail = [coder decodeObjectForKey:@"pricingDetail"];
	_previewUrl = [coder decodeObjectForKey:@"previewUrl"];
	_optionDescription = [coder decodeObjectForKey:@"optionDescription"];
	_productOptions = [coder decodeObjectForKey:@"productOptions"];
	_jsonProductZoomUrls = [coder decodeObjectForKey:@"jsonProductZoomUrls"];
	_productImageUrlWithToken = [coder decodeObjectForKey:@"productImageUrlWithToken"];
	_itemNumber = [coder decodeObjectForKey:@"itemNumber"];
	_price = [coder decodeObjectForKey:@"price"];
	_oldPrice = [coder decodeObjectForKey:@"oldPrice"];
	_tabs = [coder decodeObjectForKey:@"tabs"];
	_productImageUrl = [coder decodeObjectForKey:@"productImageUrl"];
	_autoship = [coder decodeObjectForKey:@"autoship"];
	_autoshipInformation = [coder decodeObjectForKey:@"autoshipInformation"];

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