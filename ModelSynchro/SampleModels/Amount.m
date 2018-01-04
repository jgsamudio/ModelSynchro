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

	_currency = [dictionary[@"currency"] copy];
	_value = [dictionary[@"value"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_value = [coder decodeObjectForKey:@"value"];
	_currency = [coder decodeObjectForKey:@"currency"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.value != nil) [coder encodeObject:self.value forKey:@"value"];
	if (self.currency != nil) [coder encodeObject:self.currency forKey:@"currency"];
}

@end