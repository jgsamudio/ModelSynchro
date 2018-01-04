//
//  Rating.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Rating.h"

@implementation Rating

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_average = [dictionary[@"average"] doubleValue];
	_count = [dictionary[@"count"] integerValue];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_count = [coder decodeIntegerForKey:@"count"];
	_average = [coder decodeDoubleForKey:@"average"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	[coder encodeInteger:self.count forKey:@"count"];
	[coder encodeDouble:self.average forKey:@"average"];
}

@end