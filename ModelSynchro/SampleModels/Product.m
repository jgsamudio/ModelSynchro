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

	_autoship = [dictionary[@"autoship"] copy];
	_autoshipInformation = [dictionary[@"autoshipInformation"] copy];
	_benefits = [dictionary[@"benefits"] copy];
	_brand = [dictionary[@"brand"] copy];
	_callouts = [dictionary[@"callouts"] copy];
	_categories = [dictionary[@"categories"] copy];
	_disclaimers = [dictionary[@"disclaimers"] copy];
	_flag = [dictionary[@"flag"] copy];
	_hasHsnSizeChart = [dictionary[@"hasHsnSizeChart"] copy];
	_howToUse = [dictionary[@"howToUse"] copy];
	_id = [dictionary[@"id"] copy];
	_images = [dictionary[@"images"] copy];
	_isInMatrix = [dictionary[@"isInMatrix"] copy];
	_isMatrixTextOnly = [dictionary[@"isMatrixTextOnly"] copy];
	_isPersonalizable = [dictionary[@"isPersonalizable"] copy];
	_isSoldOut = [dictionary[@"isSoldOut"] copy];
	_itemNumber = [dictionary[@"itemNumber"] copy];
	_matrixGroups = [dictionary[@"matrixGroups"] copy];
	_matrixId = [dictionary[@"matrixId"] copy];
	_matrixLabel = [dictionary[@"matrixLabel"] copy];
	_matrixOptions = [dictionary[@"matrixOptions"] copy];
	_name = [dictionary[@"name"] copy];
	_note = [dictionary[@"note"] copy];
	_overview = [dictionary[@"overview"] copy];
	_overviewHtml = [dictionary[@"overviewHtml"] copy];
	_pricing = [dictionary[@"pricing"] copy];
	_pricingDetail = [dictionary[@"pricingDetail"] copy];
	_productLink = [dictionary[@"productLink"] copy];
	_productOptions = [dictionary[@"productOptions"] copy];
	_promotions = [dictionary[@"promotions"] copy];
	_rating = [dictionary[@"rating"] copy];
	_ratingAggregates = [dictionary[@"ratingAggregates"] copy];
	_sharing = [dictionary[@"sharing"] copy];
	_shortName = [dictionary[@"shortName"] copy];
	_slug = [dictionary[@"slug"] copy];
	_tabs = [dictionary[@"tabs"] copy];
	_variantInfo = [dictionary[@"variantInfo"] copy];
	_videos = [dictionary[@"videos"] copy];
	_warrantyCollection = [dictionary[@"warrantyCollection"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_callouts = [coder decodeObjectForKey:@"callouts"];
	_hasHsnSizeChart = [coder decodeObjectForKey:@"hasHsnSizeChart"];
	_shortName = [coder decodeObjectForKey:@"shortName"];
	_videos = [coder decodeObjectForKey:@"videos"];
	_promotions = [coder decodeObjectForKey:@"promotions"];
	_matrixId = [coder decodeObjectForKey:@"matrixId"];
	_isPersonalizable = [coder decodeObjectForKey:@"isPersonalizable"];
	_matrixGroups = [coder decodeObjectForKey:@"matrixGroups"];
	_id = [coder decodeObjectForKey:@"id"];
	_benefits = [coder decodeObjectForKey:@"benefits"];
	_pricing = [coder decodeObjectForKey:@"pricing"];
	_productOptions = [coder decodeObjectForKey:@"productOptions"];
	_name = [coder decodeObjectForKey:@"name"];
	_itemNumber = [coder decodeObjectForKey:@"itemNumber"];
	_disclaimers = [coder decodeObjectForKey:@"disclaimers"];
	_productLink = [coder decodeObjectForKey:@"productLink"];
	_ratingAggregates = [coder decodeObjectForKey:@"ratingAggregates"];
	_categories = [coder decodeObjectForKey:@"categories"];
	_overview = [coder decodeObjectForKey:@"overview"];
	_flag = [coder decodeObjectForKey:@"flag"];
	_variantInfo = [coder decodeObjectForKey:@"variantInfo"];
	_brand = [coder decodeObjectForKey:@"brand"];
	_warrantyCollection = [coder decodeObjectForKey:@"warrantyCollection"];
	_sharing = [coder decodeObjectForKey:@"sharing"];
	_isInMatrix = [coder decodeObjectForKey:@"isInMatrix"];
	_images = [coder decodeObjectForKey:@"images"];
	_isSoldOut = [coder decodeObjectForKey:@"isSoldOut"];
	_matrixOptions = [coder decodeObjectForKey:@"matrixOptions"];
	_note = [coder decodeObjectForKey:@"note"];
	_tabs = [coder decodeObjectForKey:@"tabs"];
	_pricingDetail = [coder decodeObjectForKey:@"pricingDetail"];
	_slug = [coder decodeObjectForKey:@"slug"];
	_rating = [coder decodeObjectForKey:@"rating"];
	_isMatrixTextOnly = [coder decodeObjectForKey:@"isMatrixTextOnly"];
	_howToUse = [coder decodeObjectForKey:@"howToUse"];
	_overviewHtml = [coder decodeObjectForKey:@"overviewHtml"];
	_autoship = [coder decodeObjectForKey:@"autoship"];
	_autoshipInformation = [coder decodeObjectForKey:@"autoshipInformation"];
	_matrixLabel = [coder decodeObjectForKey:@"matrixLabel"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.callouts != nil) [coder encodeObject:self.callouts forKey:@"callouts"];
	if (self.hasHsnSizeChart != nil) [coder encodeObject:self.hasHsnSizeChart forKey:@"hasHsnSizeChart"];
	if (self.shortName != nil) [coder encodeObject:self.shortName forKey:@"shortName"];
	if (self.videos != nil) [coder encodeObject:self.videos forKey:@"videos"];
	if (self.promotions != nil) [coder encodeObject:self.promotions forKey:@"promotions"];
	if (self.matrixId != nil) [coder encodeObject:self.matrixId forKey:@"matrixId"];
	if (self.isPersonalizable != nil) [coder encodeObject:self.isPersonalizable forKey:@"isPersonalizable"];
	if (self.matrixGroups != nil) [coder encodeObject:self.matrixGroups forKey:@"matrixGroups"];
	if (self.id != nil) [coder encodeObject:self.id forKey:@"id"];
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
	if (self.isInMatrix != nil) [coder encodeObject:self.isInMatrix forKey:@"isInMatrix"];
	if (self.images != nil) [coder encodeObject:self.images forKey:@"images"];
	if (self.isSoldOut != nil) [coder encodeObject:self.isSoldOut forKey:@"isSoldOut"];
	if (self.matrixOptions != nil) [coder encodeObject:self.matrixOptions forKey:@"matrixOptions"];
	if (self.note != nil) [coder encodeObject:self.note forKey:@"note"];
	if (self.tabs != nil) [coder encodeObject:self.tabs forKey:@"tabs"];
	if (self.pricingDetail != nil) [coder encodeObject:self.pricingDetail forKey:@"pricingDetail"];
	if (self.slug != nil) [coder encodeObject:self.slug forKey:@"slug"];
	if (self.rating != nil) [coder encodeObject:self.rating forKey:@"rating"];
	if (self.isMatrixTextOnly != nil) [coder encodeObject:self.isMatrixTextOnly forKey:@"isMatrixTextOnly"];
	if (self.howToUse != nil) [coder encodeObject:self.howToUse forKey:@"howToUse"];
	if (self.overviewHtml != nil) [coder encodeObject:self.overviewHtml forKey:@"overviewHtml"];
	if (self.autoship != nil) [coder encodeObject:self.autoship forKey:@"autoship"];
	if (self.autoshipInformation != nil) [coder encodeObject:self.autoshipInformation forKey:@"autoshipInformation"];
	if (self.matrixLabel != nil) [coder encodeObject:self.matrixLabel forKey:@"matrixLabel"];
}

@end