//
//  Flag.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Flag.h"

@implementation Flag

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.className = [dictionary[@"className"] copy];
	self.isSoldOut = [dictionary[@"isSoldOut"] boolValue];
	self.isTodaysSpecial = [dictionary[@"isTodaysSpecial"] boolValue];
	self.name = [dictionary[@"name"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.className = [coder decodeObjectForKey:@"className"];
	self.isSoldOut = [coder decodeBoolForKey:@"isSoldOut"];
	self.name = [coder decodeObjectForKey:@"name"];
	self.isTodaysSpecial = [coder decodeBoolForKey:@"isTodaysSpecial"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.className != nil) [coder encodeObject:self.className forKey:@"className"];
	[coder encodeBool:self.isSoldOut forKey:@"isSoldOut"];
	if (self.name != nil) [coder encodeObject:self.name forKey:@"name"];
	[coder encodeBool:self.isTodaysSpecial forKey:@"isTodaysSpecial"];
}

@end