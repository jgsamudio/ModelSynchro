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
	_distTypeId = [dictionary[@"distTypeId"] copy];
	_height = [dictionary[@"height"] copy];
	_httpUrl = [dictionary[@"httpUrl"] copy];
	_iosUrl = [dictionary[@"iosUrl"] copy];
	_label = [dictionary[@"label"] copy];
	_thumbNailIsCustom = [dictionary[@"thumbNailIsCustom"] copy];
	_thumbNailUrl = [dictionary[@"thumbNailUrl"] copy];
	_videoType = [dictionary[@"videoType"] copy];
	_width = [dictionary[@"width"] copy];
	_youTubeVideoId = [dictionary[@"youTubeVideoId"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_height = [coder decodeObjectForKey:@"height"];
	_analyticCat = [coder decodeObjectForKey:@"analyticCat"];
	_width = [coder decodeObjectForKey:@"width"];
	_distTypeId = [coder decodeObjectForKey:@"distTypeId"];
	_thumbNailIsCustom = [coder decodeObjectForKey:@"thumbNailIsCustom"];
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
	if (self.height != nil) [coder encodeObject:self.height forKey:@"height"];
	if (self.analyticCat != nil) [coder encodeObject:self.analyticCat forKey:@"analyticCat"];
	if (self.width != nil) [coder encodeObject:self.width forKey:@"width"];
	if (self.distTypeId != nil) [coder encodeObject:self.distTypeId forKey:@"distTypeId"];
	if (self.thumbNailIsCustom != nil) [coder encodeObject:self.thumbNailIsCustom forKey:@"thumbNailIsCustom"];
	if (self.youTubeVideoId != nil) [coder encodeObject:self.youTubeVideoId forKey:@"youTubeVideoId"];
	if (self.thumbNailUrl != nil) [coder encodeObject:self.thumbNailUrl forKey:@"thumbNailUrl"];
	if (self.videoType != nil) [coder encodeObject:self.videoType forKey:@"videoType"];
	if (self.analyticName != nil) [coder encodeObject:self.analyticName forKey:@"analyticName"];
	if (self.label != nil) [coder encodeObject:self.label forKey:@"label"];
	if (self.httpUrl != nil) [coder encodeObject:self.httpUrl forKey:@"httpUrl"];
	if (self.iosUrl != nil) [coder encodeObject:self.iosUrl forKey:@"iosUrl"];
}

@end