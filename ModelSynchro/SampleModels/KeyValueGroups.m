//
//  KeyValueGroups.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "KeyValueGroups.h"

@implementation KeyValueGroups

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.name = [dictionary[@"name"] copy];
	self.pairs = [dictionary[@"pairs"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.pairs = [coder decodeObjectForKey:@"pairs"];
	self.name = [coder decodeObjectForKey:@"name"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.pairs != nil) [coder encodeObject:self.pairs forKey:@"pairs"];
	if (self.name != nil) [coder encodeObject:self.name forKey:@"name"];
}

@end