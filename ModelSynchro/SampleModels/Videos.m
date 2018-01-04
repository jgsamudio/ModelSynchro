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

	_analyticCat = [dictionary[@"analyticCat"] copy];
	_analyticName = [dictionary[@"analyticName"] copy];
	_distTypeId = [dictionary[@"distTypeId"] integerValue];
	_height = [dictionary[@"height"] integerValue];
	_httpUrl = [dictionary[@"httpUrl"] copy];
	_iosUrl = [dictionary[@"iosUrl"] copy];
	_label = [dictionary[@"label"] copy];
	_thumbNailIsCustom = [dictionary[@"thumbNailIsCustom"] boolValue];
	_thumbNailUrl = [dictionary[@"thumbNailUrl"] copy];
	_videoType = [dictionary[@"videoType"] copy];
	_width = [dictionary[@"width"] integerValue];
	_youTubeVideoId = [dictionary[@"youTubeVideoId"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_height = [coder decodeIntegerForKey:@"height"];
	_analyticCat = [coder decodeObjectForKey:@"analyticCat"];
	_width = [coder decodeIntegerForKey:@"width"];
	_distTypeId = [coder decodeIntegerForKey:@"distTypeId"];
	_thumbNailIsCustom = [coder decodeBoolForKey:@"thumbNailIsCustom"];
	_youTubeVideoId = [coder decodeObjectForKey:@"youTubeVideoId"];
	_thumbNailUrl = [coder decodeObjectForKey:@"thumbNailUrl"];
	_videoType = [coder decodeObjectForKey:@"videoType"];
	_analyticName = [coder decodeObjectForKey:@"analyticName"];
	_label = [coder decodeObjectForKey:@"label"];
	_httpUrl = [coder decodeObjectForKey:@"httpUrl"];
	_iosUrl = [coder decodeObjectForKey:@"iosUrl"];

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