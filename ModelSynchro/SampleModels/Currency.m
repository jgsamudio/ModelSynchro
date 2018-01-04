//
//  Currency.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Currency.h"

@implementation Currency

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.isoCode = [dictionary[@"isoCode"] copy];
	self.name = [dictionary[@"name"] copy];
	self.symbol = [dictionary[@"symbol"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.name = [coder decodeObjectForKey:@"name"];
	self.isoCode = [coder decodeObjectForKey:@"isoCode"];
	self.symbol = [coder decodeObjectForKey:@"symbol"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.name != nil) [coder encodeObject:self.name forKey:@"name"];
	if (self.isoCode != nil) [coder encodeObject:self.isoCode forKey:@"isoCode"];
	if (self.symbol != nil) [coder encodeObject:self.symbol forKey:@"symbol"];
}

@end