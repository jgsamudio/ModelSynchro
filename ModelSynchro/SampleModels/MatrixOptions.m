//
//  MatrixOptions.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@implementation MatrixOptions

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_autoship = [dictionary[@"autoship"] copy];
	_autoshipInformation = [dictionary[@"autoshipInformation"] copy];
	_hasHsnSizeChart = [dictionary[@"hasHsnSizeChart"] copy];
	_images = [dictionary[@"images"] copy];
	_itemNumber = [dictionary[@"itemNumber"] copy];
	_jsonProductZoomUrls = [dictionary[@"jsonProductZoomUrls"] copy];
	_oldPrice = [dictionary[@"oldPrice"] copy];
	_optionDescription = [dictionary[@"optionDescription"] copy];
	_previewUrl = [dictionary[@"previewUrl"] copy];
	_price = [dictionary[@"price"] copy];
	_pricingDetail = [dictionary[@"pricingDetail"] copy];
	_productDescription = [dictionary[@"productDescription"] copy];
	_productId = [dictionary[@"productId"] copy];
	_productImageUrl = [dictionary[@"productImageUrl"] copy];
	_productImageUrlWithToken = [dictionary[@"productImageUrlWithToken"] copy];
	_productOptions = [dictionary[@"productOptions"] copy];
	_productUrl = [dictionary[@"productUrl"] copy];
	_tabs = [dictionary[@"tabs"] copy];
	_thumbnailUrl = [dictionary[@"thumbnailUrl"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_jsonProductZoomUrls = [coder decodeObjectForKey:@"jsonProductZoomUrls"];
	_previewUrl = [coder decodeObjectForKey:@"previewUrl"];
	_productUrl = [coder decodeObjectForKey:@"productUrl"];
	_hasHsnSizeChart = [coder decodeObjectForKey:@"hasHsnSizeChart"];
	_thumbnailUrl = [coder decodeObjectForKey:@"thumbnailUrl"];
	_productImageUrlWithToken = [coder decodeObjectForKey:@"productImageUrlWithToken"];
	_price = [coder decodeObjectForKey:@"price"];
	_optionDescription = [coder decodeObjectForKey:@"optionDescription"];
	_productId = [coder decodeObjectForKey:@"productId"];
	_productDescription = [coder decodeObjectForKey:@"productDescription"];
	_productImageUrl = [coder decodeObjectForKey:@"productImageUrl"];
	_images = [coder decodeObjectForKey:@"images"];
	_pricingDetail = [coder decodeObjectForKey:@"pricingDetail"];
	_productOptions = [coder decodeObjectForKey:@"productOptions"];
	_itemNumber = [coder decodeObjectForKey:@"itemNumber"];
	_oldPrice = [coder decodeObjectForKey:@"oldPrice"];
	_tabs = [coder decodeObjectForKey:@"tabs"];
	_autoship = [coder decodeObjectForKey:@"autoship"];
	_autoshipInformation = [coder decodeObjectForKey:@"autoshipInformation"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.jsonProductZoomUrls != nil) [coder encodeObject:self.jsonProductZoomUrls forKey:@"jsonProductZoomUrls"];
	if (self.previewUrl != nil) [coder encodeObject:self.previewUrl forKey:@"previewUrl"];
	if (self.productUrl != nil) [coder encodeObject:self.productUrl forKey:@"productUrl"];
	if (self.hasHsnSizeChart != nil) [coder encodeObject:self.hasHsnSizeChart forKey:@"hasHsnSizeChart"];
	if (self.thumbnailUrl != nil) [coder encodeObject:self.thumbnailUrl forKey:@"thumbnailUrl"];
	if (self.productImageUrlWithToken != nil) [coder encodeObject:self.productImageUrlWithToken forKey:@"productImageUrlWithToken"];
	if (self.price != nil) [coder encodeObject:self.price forKey:@"price"];
	if (self.optionDescription != nil) [coder encodeObject:self.optionDescription forKey:@"optionDescription"];
	if (self.productId != nil) [coder encodeObject:self.productId forKey:@"productId"];
	if (self.productDescription != nil) [coder encodeObject:self.productDescription forKey:@"productDescription"];
	if (self.productImageUrl != nil) [coder encodeObject:self.productImageUrl forKey:@"productImageUrl"];
	if (self.images != nil) [coder encodeObject:self.images forKey:@"images"];
	if (self.pricingDetail != nil) [coder encodeObject:self.pricingDetail forKey:@"pricingDetail"];
	if (self.productOptions != nil) [coder encodeObject:self.productOptions forKey:@"productOptions"];
	if (self.itemNumber != nil) [coder encodeObject:self.itemNumber forKey:@"itemNumber"];
	if (self.oldPrice != nil) [coder encodeObject:self.oldPrice forKey:@"oldPrice"];
	if (self.tabs != nil) [coder encodeObject:self.tabs forKey:@"tabs"];
	if (self.autoship != nil) [coder encodeObject:self.autoship forKey:@"autoship"];
	if (self.autoshipInformation != nil) [coder encodeObject:self.autoshipInformation forKey:@"autoshipInformation"];
}

@end