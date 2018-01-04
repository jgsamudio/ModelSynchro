//
//  Product.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Product.h"

@implementation Product

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.autoship = [dictionary[@"autoship"] copy];
	self.autoshipInformation = [dictionary[@"autoshipInformation"] copy];
	self.benefits = [dictionary[@"benefits"] copy];
	self.brand = [dictionary[@"brand"] copy];
	self.callouts = [dictionary[@"callouts"] copy];
	self.categories = [dictionary[@"categories"] copy];
	self.disclaimers = [dictionary[@"disclaimers"] copy];
	self.flag = [dictionary[@"flag"] copy];
	self.hasHsnSizeChart = [dictionary[@"hasHsnSizeChart"] boolValue];
	self.howToUse = [dictionary[@"howToUse"] copy];
	self.id = [dictionary[@"id"] integerValue];
	self.images = [dictionary[@"images"] copy];
	self.isInMatrix = [dictionary[@"isInMatrix"] boolValue];
	self.isMatrixTextOnly = [dictionary[@"isMatrixTextOnly"] boolValue];
	self.isPersonalizable = [dictionary[@"isPersonalizable"] boolValue];
	self.isSoldOut = [dictionary[@"isSoldOut"] boolValue];
	self.itemNumber = [dictionary[@"itemNumber"] copy];
	self.matrixGroups = [dictionary[@"matrixGroups"] copy];
	self.matrixId = [dictionary[@"matrixId"] integerValue];
	self.matrixLabel = [dictionary[@"matrixLabel"] copy];
	self.matrixOptions = [dictionary[@"matrixOptions"] copy];
	self.name = [dictionary[@"name"] copy];
	self.note = [dictionary[@"note"] copy];
	self.overview = [dictionary[@"overview"] copy];
	self.overviewHtml = [dictionary[@"overviewHtml"] copy];
	self.pricing = [dictionary[@"pricing"] copy];
	self.pricingDetail = [dictionary[@"pricingDetail"] copy];
	self.productLink = [dictionary[@"productLink"] copy];
	self.productOptions = [dictionary[@"productOptions"] copy];
	self.promotions = [dictionary[@"promotions"] copy];
	self.rating = [dictionary[@"rating"] copy];
	self.ratingAggregates = [dictionary[@"ratingAggregates"] copy];
	self.sharing = [dictionary[@"sharing"] copy];
	self.shortName = [dictionary[@"shortName"] copy];
	self.slug = [dictionary[@"slug"] copy];
	self.tabs = [dictionary[@"tabs"] copy];
	self.variantInfo = [dictionary[@"variantInfo"] copy];
	self.videos = [dictionary[@"videos"] copy];
	self.warrantyCollection = [dictionary[@"warrantyCollection"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.callouts = [coder decodeObjectForKey:@"callouts"];
	self.hasHsnSizeChart = [coder decodeBoolForKey:@"hasHsnSizeChart"];
	self.shortName = [coder decodeObjectForKey:@"shortName"];
	self.videos = [coder decodeObjectForKey:@"videos"];
	self.promotions = [coder decodeObjectForKey:@"promotions"];
	self.matrixId = [coder decodeIntegerForKey:@"matrixId"];
	self.isPersonalizable = [coder decodeBoolForKey:@"isPersonalizable"];
	self.matrixGroups = [coder decodeObjectForKey:@"matrixGroups"];
	self.id = [coder decodeIntegerForKey:@"id"];
	self.benefits = [coder decodeObjectForKey:@"benefits"];
	self.pricing = [coder decodeObjectForKey:@"pricing"];
	self.productOptions = [coder decodeObjectForKey:@"productOptions"];
	self.name = [coder decodeObjectForKey:@"name"];
	self.itemNumber = [coder decodeObjectForKey:@"itemNumber"];
	self.disclaimers = [coder decodeObjectForKey:@"disclaimers"];
	self.productLink = [coder decodeObjectForKey:@"productLink"];
	self.ratingAggregates = [coder decodeObjectForKey:@"ratingAggregates"];
	self.categories = [coder decodeObjectForKey:@"categories"];
	self.overview = [coder decodeObjectForKey:@"overview"];
	self.flag = [coder decodeObjectForKey:@"flag"];
	self.variantInfo = [coder decodeObjectForKey:@"variantInfo"];
	self.brand = [coder decodeObjectForKey:@"brand"];
	self.warrantyCollection = [coder decodeObjectForKey:@"warrantyCollection"];
	self.sharing = [coder decodeObjectForKey:@"sharing"];
	self.isInMatrix = [coder decodeBoolForKey:@"isInMatrix"];
	self.images = [coder decodeObjectForKey:@"images"];
	self.isSoldOut = [coder decodeBoolForKey:@"isSoldOut"];
	self.matrixOptions = [coder decodeObjectForKey:@"matrixOptions"];
	self.note = [coder decodeObjectForKey:@"note"];
	self.tabs = [coder decodeObjectForKey:@"tabs"];
	self.pricingDetail = [coder decodeObjectForKey:@"pricingDetail"];
	self.slug = [coder decodeObjectForKey:@"slug"];
	self.rating = [coder decodeObjectForKey:@"rating"];
	self.isMatrixTextOnly = [coder decodeBoolForKey:@"isMatrixTextOnly"];
	self.howToUse = [coder decodeObjectForKey:@"howToUse"];
	self.overviewHtml = [coder decodeObjectForKey:@"overviewHtml"];
	self.autoship = [coder decodeObjectForKey:@"autoship"];
	self.autoshipInformation = [coder decodeObjectForKey:@"autoshipInformation"];
	self.matrixLabel = [coder decodeObjectForKey:@"matrixLabel"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.callouts != nil) [coder encodeObject:self.callouts forKey:@"callouts"];
	[coder encodeBool:self.hasHsnSizeChart forKey:@"hasHsnSizeChart"];
	if (self.shortName != nil) [coder encodeObject:self.shortName forKey:@"shortName"];
	if (self.videos != nil) [coder encodeObject:self.videos forKey:@"videos"];
	if (self.promotions != nil) [coder encodeObject:self.promotions forKey:@"promotions"];
	[coder encodeInteger:self.matrixId forKey:@"matrixId"];
	[coder encodeBool:self.isPersonalizable forKey:@"isPersonalizable"];
	if (self.matrixGroups != nil) [coder encodeObject:self.matrixGroups forKey:@"matrixGroups"];
	[coder encodeInteger:self.id forKey:@"id"];
	if (self.benefits != nil) [coder encodeObject:self.benefits forKey:@"benefits"];
	if (self.pricing != nil) [coder encodeObject:self.pricing forKey:@"pricing"];
	if (self.productOptions != nil) [coder encodeObject:self.productOptions forKey:@"productOptions"];
	if (self.name != nil) [coder encodeObject:self.name forKey:@"name"];
	if (self.itemNumber != nil) [coder encodeObject:self.itemNumber forKey:@"itemNumber"];
	if (self.disclaimers != nil) [coder encodeObject:self.disclaimers forKey:@"disclaimers"];
	if (self.productLink != nil) [coder encodeObject:self.productLink forKey:@"productLink"];
	if (self.ratingAggregates != nil) [coder encodeObject:self.ratingAggregates forKey:@"ratingAggregates"];
	if (self.categories != nil) [coder encodeObject:self.categories forKey:@"categories"];
	if (self.overview != nil) [coder encodeObject:self.overview forKey:@"overview"];
	if (self.flag != nil) [coder encodeObject:self.flag forKey:@"flag"];
	if (self.variantInfo != nil) [coder encodeObject:self.variantInfo forKey:@"variantInfo"];
	if (self.brand != nil) [coder encodeObject:self.brand forKey:@"brand"];
	if (self.warrantyCollection != nil) [coder encodeObject:self.warrantyCollection forKey:@"warrantyCollection"];
	if (self.sharing != nil) [coder encodeObject:self.sharing forKey:@"sharing"];
	[coder encodeBool:self.isInMatrix forKey:@"isInMatrix"];
	if (self.images != nil) [coder encodeObject:self.images forKey:@"images"];
	[coder encodeBool:self.isSoldOut forKey:@"isSoldOut"];
	if (self.matrixOptions != nil) [coder encodeObject:self.matrixOptions forKey:@"matrixOptions"];
	if (self.note != nil) [coder encodeObject:self.note forKey:@"note"];
	if (self.tabs != nil) [coder encodeObject:self.tabs forKey:@"tabs"];
	if (self.pricingDetail != nil) [coder encodeObject:self.pricingDetail forKey:@"pricingDetail"];
	if (self.slug != nil) [coder encodeObject:self.slug forKey:@"slug"];
	if (self.rating != nil) [coder encodeObject:self.rating forKey:@"rating"];
	[coder encodeBool:self.isMatrixTextOnly forKey:@"isMatrixTextOnly"];
	if (self.howToUse != nil) [coder encodeObject:self.howToUse forKey:@"howToUse"];
	if (self.overviewHtml != nil) [coder encodeObject:self.overviewHtml forKey:@"overviewHtml"];
	if (self.autoship != nil) [coder encodeObject:self.autoship forKey:@"autoship"];
	if (self.autoshipInformation != nil) [coder encodeObject:self.autoshipInformation forKey:@"autoshipInformation"];
	if (self.matrixLabel != nil) [coder encodeObject:self.matrixLabel forKey:@"matrixLabel"];
}

@end