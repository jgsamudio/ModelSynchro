//
//  Pricing.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

@implementation Pricing

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_tier1 = [dictionary[@"tier1"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_tier1 = [coder decodeObjectForKey:@"tier1"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.tier1 != nil) [coder encodeObject:self.tier1 forKey:@"tier1"];
}

@end