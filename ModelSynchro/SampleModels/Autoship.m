//
//  Autoship.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Autoship.h"

@implementation Autoship

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.description = [dictionary[@"description"] copy];
	self.frequency = [dictionary[@"frequency"] integerValue];
	self.id = [dictionary[@"id"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.description = [coder decodeObjectForKey:@"description"];
	self.frequency = [coder decodeIntegerForKey:@"frequency"];
	self.id = [coder decodeObjectForKey:@"id"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.description != nil) [coder encodeObject:self.description forKey:@"description"];
	[coder encodeInteger:self.frequency forKey:@"frequency"];
	if (self.id != nil) [coder encodeObject:self.id forKey:@"id"];
}

@end