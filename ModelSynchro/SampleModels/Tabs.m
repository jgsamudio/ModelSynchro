//
//  Tabs.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Tabs.h"

@implementation Tabs

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_contents = [dictionary[@"contents"] copy];
	_name = [dictionary[@"name"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_name = [coder decodeObjectForKey:@"name"];
	_contents = [coder decodeObjectForKey:@"contents"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.name != nil) [coder encodeObject:self.name forKey:@"name"];
	if (self.contents != nil) [coder encodeObject:self.contents forKey:@"contents"];
}

@end