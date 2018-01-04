//
//  Callouts.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Callouts.h"

@implementation Callouts

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.type = [dictionary[@"type"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.type = [coder decodeObjectForKey:@"type"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.type != nil) [coder encodeObject:self.type forKey:@"type"];
}

@end