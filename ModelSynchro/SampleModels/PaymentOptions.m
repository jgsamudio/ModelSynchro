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
	_isExtraFlex = [dictionary[@"isExtraFlex"] boolValue];
	_number = [dictionary[@"number"] integerValue];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_isExtraFlex = [coder decodeBoolForKey:@"isExtraFlex"];
	_number = [coder decodeIntegerForKey:@"number"];
	_amount = [coder decodeObjectForKey:@"amount"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	[coder encodeBool:self.isExtraFlex forKey:@"isExtraFlex"];
	[coder encodeInteger:self.number forKey:@"number"];
	if (self.amount != nil) [coder encodeObject:self.amount forKey:@"amount"];
}

@end