//
//  Amount.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Amount.h"

@implementation Amount

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.currency = [dictionary[@"currency"] copy];
	self.value = [dictionary[@"value"] doubleValue];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.value = [coder decodeDoubleForKey:@"value"];
	self.currency = [coder decodeObjectForKey:@"currency"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	[coder encodeDouble:self.value forKey:@"value"];
	if (self.currency != nil) [coder encodeObject:self.currency forKey:@"currency"];
}

@end