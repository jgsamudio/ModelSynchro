//
//  Value.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Value.h"

@implementation Value

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.code = [dictionary[@"code"] copy];
	self.description = [dictionary[@"description"] copy];
	self.imageName = [dictionary[@"imageName"] copy];
	self.imageUrl = [dictionary[@"imageUrl"] copy];
	self.imageUrlWithToken = [dictionary[@"imageUrlWithToken"] copy];
	self.jsonPlusSizeZoomUrls = [dictionary[@"jsonPlusSizeZoomUrls"] copy];
	self.jsonZoomUrls = [dictionary[@"jsonZoomUrls"] copy];
	self.plusSizeProductImageUrl = [dictionary[@"plusSizeProductImageUrl"] copy];
	self.plusSizeProductImageUrlWithToken = [dictionary[@"plusSizeProductImageUrlWithToken"] copy];
	self.productImageName = [dictionary[@"productImageName"] copy];
	self.productImageUrl = [dictionary[@"productImageUrl"] copy];
	self.productImageUrlWithToken = [dictionary[@"productImageUrlWithToken"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.productImageUrl = [coder decodeObjectForKey:@"productImageUrl"];
	self.plusSizeProductImageUrlWithToken = [coder decodeObjectForKey:@"plusSizeProductImageUrlWithToken"];
	self.code = [coder decodeObjectForKey:@"code"];
	self.plusSizeProductImageUrl = [coder decodeObjectForKey:@"plusSizeProductImageUrl"];
	self.productImageName = [coder decodeObjectForKey:@"productImageName"];
	self.productImageUrlWithToken = [coder decodeObjectForKey:@"productImageUrlWithToken"];
	self.jsonPlusSizeZoomUrls = [coder decodeObjectForKey:@"jsonPlusSizeZoomUrls"];
	self.imageName = [coder decodeObjectForKey:@"imageName"];
	self.imageUrlWithToken = [coder decodeObjectForKey:@"imageUrlWithToken"];
	self.jsonZoomUrls = [coder decodeObjectForKey:@"jsonZoomUrls"];
	self.imageUrl = [coder decodeObjectForKey:@"imageUrl"];
	self.description = [coder decodeObjectForKey:@"description"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.productImageUrl != nil) [coder encodeObject:self.productImageUrl forKey:@"productImageUrl"];
	if (self.plusSizeProductImageUrlWithToken != nil) [coder encodeObject:self.plusSizeProductImageUrlWithToken forKey:@"plusSizeProductImageUrlWithToken"];
	if (self.code != nil) [coder encodeObject:self.code forKey:@"code"];
	if (self.plusSizeProductImageUrl != nil) [coder encodeObject:self.plusSizeProductImageUrl forKey:@"plusSizeProductImageUrl"];
	if (self.productImageName != nil) [coder encodeObject:self.productImageName forKey:@"productImageName"];
	if (self.productImageUrlWithToken != nil) [coder encodeObject:self.productImageUrlWithToken forKey:@"productImageUrlWithToken"];
	if (self.jsonPlusSizeZoomUrls != nil) [coder encodeObject:self.jsonPlusSizeZoomUrls forKey:@"jsonPlusSizeZoomUrls"];
	if (self.imageName != nil) [coder encodeObject:self.imageName forKey:@"imageName"];
	if (self.imageUrlWithToken != nil) [coder encodeObject:self.imageUrlWithToken forKey:@"imageUrlWithToken"];
	if (self.jsonZoomUrls != nil) [coder encodeObject:self.jsonZoomUrls forKey:@"jsonZoomUrls"];
	if (self.imageUrl != nil) [coder encodeObject:self.imageUrl forKey:@"imageUrl"];
	if (self.description != nil) [coder encodeObject:self.description forKey:@"description"];
}

@end