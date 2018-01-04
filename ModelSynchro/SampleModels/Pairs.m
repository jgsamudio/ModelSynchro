//
//  Pairs.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Pairs.h"

@implementation Pairs

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.name = [dictionary[@"name"] copy];
	self.values = [dictionary[@"values"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.name = [coder decodeObjectForKey:@"name"];
	self.values = [coder decodeObjectForKey:@"values"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.name != nil) [coder encodeObject:self.name forKey:@"name"];
	if (self.values != nil) [coder encodeObject:self.values forKey:@"values"];
}

@end