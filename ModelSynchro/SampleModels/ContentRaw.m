//
//  ContentRaw.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@implementation ContentRaw

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_content = [dictionary[@"content"] copy];
	_linkType = [dictionary[@"linkType"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_content = [coder decodeObjectForKey:@"content"];
	_linkType = [coder decodeObjectForKey:@"linkType"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.content != nil) [coder encodeObject:self.content forKey:@"content"];
	if (self.linkType != nil) [coder encodeObject:self.linkType forKey:@"linkType"];
}

@end