//
//  Videos.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Videos.h"

@implementation Videos

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.analyticCat = [dictionary[@"analyticCat"] copy];
	self.analyticName = [dictionary[@"analyticName"] copy];
	self.distTypeId = [dictionary[@"distTypeId"] integerValue];
	self.height = [dictionary[@"height"] integerValue];
	self.httpUrl = [dictionary[@"httpUrl"] copy];
	self.iosUrl = [dictionary[@"iosUrl"] copy];
	self.label = [dictionary[@"label"] copy];
	self.thumbNailIsCustom = [dictionary[@"thumbNailIsCustom"] boolValue];
	self.thumbNailUrl = [dictionary[@"thumbNailUrl"] copy];
	self.videoType = [dictionary[@"videoType"] copy];
	self.width = [dictionary[@"width"] integerValue];
	self.youTubeVideoId = [dictionary[@"youTubeVideoId"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.height = [coder decodeIntegerForKey:@"height"];
	self.analyticCat = [coder decodeObjectForKey:@"analyticCat"];
	self.width = [coder decodeIntegerForKey:@"width"];
	self.distTypeId = [coder decodeIntegerForKey:@"distTypeId"];
	self.thumbNailIsCustom = [coder decodeBoolForKey:@"thumbNailIsCustom"];
	self.youTubeVideoId = [coder decodeObjectForKey:@"youTubeVideoId"];
	self.thumbNailUrl = [coder decodeObjectForKey:@"thumbNailUrl"];
	self.videoType = [coder decodeObjectForKey:@"videoType"];
	self.analyticName = [coder decodeObjectForKey:@"analyticName"];
	self.label = [coder decodeObjectForKey:@"label"];
	self.httpUrl = [coder decodeObjectForKey:@"httpUrl"];
	self.iosUrl = [coder decodeObjectForKey:@"iosUrl"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	[coder encodeInteger:self.height forKey:@"height"];
	if (self.analyticCat != nil) [coder encodeObject:self.analyticCat forKey:@"analyticCat"];
	[coder encodeInteger:self.width forKey:@"width"];
	[coder encodeInteger:self.distTypeId forKey:@"distTypeId"];
	[coder encodeBool:self.thumbNailIsCustom forKey:@"thumbNailIsCustom"];
	if (self.youTubeVideoId != nil) [coder encodeObject:self.youTubeVideoId forKey:@"youTubeVideoId"];
	if (self.thumbNailUrl != nil) [coder encodeObject:self.thumbNailUrl forKey:@"thumbNailUrl"];
	if (self.videoType != nil) [coder encodeObject:self.videoType forKey:@"videoType"];
	if (self.analyticName != nil) [coder encodeObject:self.analyticName forKey:@"analyticName"];
	if (self.label != nil) [coder encodeObject:self.label forKey:@"label"];
	if (self.httpUrl != nil) [coder encodeObject:self.httpUrl forKey:@"httpUrl"];
	if (self.iosUrl != nil) [coder encodeObject:self.iosUrl forKey:@"iosUrl"];
}

@end