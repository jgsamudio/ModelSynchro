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

	_code = [dictionary[@"code"] copy];
	_description = [dictionary[@"description"] copy];
	_imageName = [dictionary[@"imageName"] copy];
	_imageUrl = [dictionary[@"imageUrl"] copy];
	_imageUrlWithToken = [dictionary[@"imageUrlWithToken"] copy];
	_jsonPlusSizeZoomUrls = [dictionary[@"jsonPlusSizeZoomUrls"] copy];
	_jsonZoomUrls = [dictionary[@"jsonZoomUrls"] copy];
	_plusSizeProductImageUrl = [dictionary[@"plusSizeProductImageUrl"] copy];
	_plusSizeProductImageUrlWithToken = [dictionary[@"plusSizeProductImageUrlWithToken"] copy];
	_productImageName = [dictionary[@"productImageName"] copy];
	_productImageUrl = [dictionary[@"productImageUrl"] copy];
	_productImageUrlWithToken = [dictionary[@"productImageUrlWithToken"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_productImageUrl = [coder decodeObjectForKey:@"productImageUrl"];
	_plusSizeProductImageUrlWithToken = [coder decodeObjectForKey:@"plusSizeProductImageUrlWithToken"];
	_code = [coder decodeObjectForKey:@"code"];
	_plusSizeProductImageUrl = [coder decodeObjectForKey:@"plusSizeProductImageUrl"];
	_productImageName = [coder decodeObjectForKey:@"productImageName"];
	_productImageUrlWithToken = [coder decodeObjectForKey:@"productImageUrlWithToken"];
	_jsonPlusSizeZoomUrls = [coder decodeObjectForKey:@"jsonPlusSizeZoomUrls"];
	_imageName = [coder decodeObjectForKey:@"imageName"];
	_imageUrlWithToken = [coder decodeObjectForKey:@"imageUrlWithToken"];
	_jsonZoomUrls = [coder decodeObjectForKey:@"jsonZoomUrls"];
	_imageUrl = [coder decodeObjectForKey:@"imageUrl"];
	_description = [coder decodeObjectForKey:@"description"];

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