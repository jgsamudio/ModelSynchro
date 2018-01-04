//
//  PaymentOptions.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "PaymentOptions.h"

@implementation PaymentOptions

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_amount = [dictionary[@"amount"] copy];
	_isExtraFlex = [dictionary[@"isExtraFlex"] copy];
	_number = [dictionary[@"number"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_isExtraFlex = [coder decodeObjectForKey:@"isExtraFlex"];
	_number = [coder decodeObjectForKey:@"number"];
	_amount = [coder decodeObjectForKey:@"amount"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.isExtraFlex != nil) [coder encodeObject:self.isExtraFlex forKey:@"isExtraFlex"];
	if (self.number != nil) [coder encodeObject:self.number forKey:@"number"];
	if (self.amount != nil) [coder encodeObject:self.amount forKey:@"amount"];
}

@end