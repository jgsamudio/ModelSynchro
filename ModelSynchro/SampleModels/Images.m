//
//  Images.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Images.h"

@implementation Images

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.description = [dictionary[@"description"] copy];
	self.isDefault = [dictionary[@"isDefault"] boolValue];
	self.jsonPlusSizeZoomUrls = [dictionary[@"jsonPlusSizeZoomUrls"] copy];
	self.jsonZoomUrls = [dictionary[@"jsonZoomUrls"] copy];
	self.name = [dictionary[@"name"] copy];
	self.plusName = [dictionary[@"plusName"] copy];
	self.plusSizeProductImageUrl = [dictionary[@"plusSizeProductImageUrl"] copy];
	self.thumbnailUrl = [dictionary[@"thumbnailUrl"] copy];
	self.url = [dictionary[@"url"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.isDefault = [coder decodeBoolForKey:@"isDefault"];
	self.jsonPlusSizeZoomUrls = [coder decodeObjectForKey:@"jsonPlusSizeZoomUrls"];
	self.plusSizeProductImageUrl = [coder decodeObjectForKey:@"plusSizeProductImageUrl"];
	self.thumbnailUrl = [coder decodeObjectForKey:@"thumbnailUrl"];
	self.url = [coder decodeObjectForKey:@"url"];
	self.name = [coder decodeObjectForKey:@"name"];
	self.plusName = [coder decodeObjectForKey:@"plusName"];
	self.jsonZoomUrls = [coder decodeObjectForKey:@"jsonZoomUrls"];
	self.description = [coder decodeObjectForKey:@"description"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	[coder encodeBool:self.isDefault forKey:@"isDefault"];
	if (self.jsonPlusSizeZoomUrls != nil) [coder encodeObject:self.jsonPlusSizeZoomUrls forKey:@"jsonPlusSizeZoomUrls"];
	if (self.plusSizeProductImageUrl != nil) [coder encodeObject:self.plusSizeProductImageUrl forKey:@"plusSizeProductImageUrl"];
	if (self.thumbnailUrl != nil) [coder encodeObject:self.thumbnailUrl forKey:@"thumbnailUrl"];
	if (self.url != nil) [coder encodeObject:self.url forKey:@"url"];
	if (self.name != nil) [coder encodeObject:self.name forKey:@"name"];
	if (self.plusName != nil) [coder encodeObject:self.plusName forKey:@"plusName"];
	if (self.jsonZoomUrls != nil) [coder encodeObject:self.jsonZoomUrls forKey:@"jsonZoomUrls"];
	if (self.description != nil) [coder encodeObject:self.description forKey:@"description"];
}

@end