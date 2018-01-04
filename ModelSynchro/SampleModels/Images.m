//
//  Images.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@implementation Images

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_description = [dictionary[@"description"] copy];
	_isDefault = [dictionary[@"isDefault"] copy];
	_jsonPlusSizeZoomUrls = [dictionary[@"jsonPlusSizeZoomUrls"] copy];
	_jsonZoomUrls = [dictionary[@"jsonZoomUrls"] copy];
	_name = [dictionary[@"name"] copy];
	_plusName = [dictionary[@"plusName"] copy];
	_plusSizeProductImageUrl = [dictionary[@"plusSizeProductImageUrl"] copy];
	_thumbnailUrl = [dictionary[@"thumbnailUrl"] copy];
	_url = [dictionary[@"url"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_isDefault = [coder decodeObjectForKey:@"isDefault"];
	_jsonPlusSizeZoomUrls = [coder decodeObjectForKey:@"jsonPlusSizeZoomUrls"];
	_plusSizeProductImageUrl = [coder decodeObjectForKey:@"plusSizeProductImageUrl"];
	_thumbnailUrl = [coder decodeObjectForKey:@"thumbnailUrl"];
	_url = [coder decodeObjectForKey:@"url"];
	_name = [coder decodeObjectForKey:@"name"];
	_plusName = [coder decodeObjectForKey:@"plusName"];
	_jsonZoomUrls = [coder decodeObjectForKey:@"jsonZoomUrls"];
	_description = [coder decodeObjectForKey:@"description"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.isDefault != nil) [coder encodeObject:self.isDefault forKey:@"isDefault"];
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