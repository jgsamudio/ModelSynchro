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

	_description = [dictionary[@"description"] copy];
	_frequency = [dictionary[@"frequency"] copy];
	_id = [dictionary[@"id"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_description = [coder decodeObjectForKey:@"description"];
	_frequency = [coder decodeObjectForKey:@"frequency"];
	_id = [coder decodeObjectForKey:@"id"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.description != nil) [coder encodeObject:self.description forKey:@"description"];
	if (self.frequency != nil) [coder encodeObject:self.frequency forKey:@"frequency"];
	if (self.id != nil) [coder encodeObject:self.id forKey:@"id"];
}

@end