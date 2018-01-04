//
//  OldPrice.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "OldPrice.h"

@implementation OldPrice

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.amount = [dictionary[@"amount"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.amount = [coder decodeObjectForKey:@"amount"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.amount != nil) [coder encodeObject:self.amount forKey:@"amount"];
}

@end