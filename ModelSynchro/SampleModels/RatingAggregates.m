//
//  RatingAggregates.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "RatingAggregates.h"

@implementation RatingAggregates

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_averageRatingValue = [dictionary[@"averageRatingValue"] doubleValue];
	_gaugeInfo = [dictionary[@"gaugeInfo"] copy];
	_groups = [dictionary[@"groups"] copy];
	_totalRatings = [dictionary[@"totalRatings"] integerValue];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_gaugeInfo = [coder decodeObjectForKey:@"gaugeInfo"];
	_averageRatingValue = [coder decodeDoubleForKey:@"averageRatingValue"];
	_totalRatings = [coder decodeIntegerForKey:@"totalRatings"];
	_groups = [coder decodeObjectForKey:@"groups"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.gaugeInfo != nil) [coder encodeObject:self.gaugeInfo forKey:@"gaugeInfo"];
	[coder encodeDouble:self.averageRatingValue forKey:@"averageRatingValue"];
	[coder encodeInteger:self.totalRatings forKey:@"totalRatings"];
	if (self.groups != nil) [coder encodeObject:self.groups forKey:@"groups"];
}

@end