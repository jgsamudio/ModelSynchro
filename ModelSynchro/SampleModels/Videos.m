//
//  Videos.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

@implementation Videos

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_analyticCat = [dictionary[@"analyticCat"] copy];
	_analyticName = [dictionary[@"analyticName"] copy];
	_distTypeId = [dictionary[@"distTypeId"] copy];
	_formattedHttpRuntime = [dictionary[@"formattedHttpRuntime"] copy];
	_height = [dictionary[@"height"] copy];
	_httpRuntime = [dictionary[@"httpRuntime"] copy];
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

	_analyticCat = [coder decodeObjectForKey:@"analyticCat"];
	_height = [coder decodeObjectForKey:@"height"];
	_width = [coder decodeObjectForKey:@"width"];
	_distTypeId = [coder decodeObjectForKey:@"distTypeId"];
	_httpRuntime = [coder decodeObjectForKey:@"httpRuntime"];
	_thumbNailIsCustom = [coder decodeObjectForKey:@"thumbNailIsCustom"];
	_youTubeVideoId = [coder decodeObjectForKey:@"youTubeVideoId"];
	_formattedHttpRuntime = [coder decodeObjectForKey:@"formattedHttpRuntime"];
	_thumbNailUrl = [coder decodeObjectForKey:@"thumbNailUrl"];
	_videoType = [coder decodeObjectForKey:@"videoType"];
	_analyticName = [coder decodeObjectForKey:@"analyticName"];
	_label = [coder decodeObjectForKey:@"label"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.analyticCat != nil) [coder encodeObject:self.analyticCat forKey:@"analyticCat"];
	if (self.height != nil) [coder encodeObject:self.height forKey:@"height"];
	if (self.width != nil) [coder encodeObject:self.width forKey:@"width"];
	if (self.distTypeId != nil) [coder encodeObject:self.distTypeId forKey:@"distTypeId"];
	if (self.httpRuntime != nil) [coder encodeObject:self.httpRuntime forKey:@"httpRuntime"];
	if (self.thumbNailIsCustom != nil) [coder encodeObject:self.thumbNailIsCustom forKey:@"thumbNailIsCustom"];
	if (self.youTubeVideoId != nil) [coder encodeObject:self.youTubeVideoId forKey:@"youTubeVideoId"];
	if (self.formattedHttpRuntime != nil) [coder encodeObject:self.formattedHttpRuntime forKey:@"formattedHttpRuntime"];
	if (self.thumbNailUrl != nil) [coder encodeObject:self.thumbNailUrl forKey:@"thumbNailUrl"];
	if (self.videoType != nil) [coder encodeObject:self.videoType forKey:@"videoType"];
	if (self.analyticName != nil) [coder encodeObject:self.analyticName forKey:@"analyticName"];
	if (self.label != nil) [coder encodeObject:self.label forKey:@"label"];
}

@end