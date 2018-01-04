//
//  GaugeInfo.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "GaugeInfo.h"

@implementation GaugeInfo

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.id = [dictionary[@"id"] copy];
	self.name = [dictionary[@"name"] copy];
	self.type = [dictionary[@"type"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.type = [coder decodeObjectForKey:@"type"];
	self.name = [coder decodeObjectForKey:@"name"];
	self.id = [coder decodeObjectForKey:@"id"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.type != nil) [coder encodeObject:self.type forKey:@"type"];
	if (self.name != nil) [coder encodeObject:self.name forKey:@"name"];
	if (self.id != nil) [coder encodeObject:self.id forKey:@"id"];
}

@end