//
//  RatingAggregates.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

@implementation RatingAggregates

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_averageRatingValue = [dictionary[@"averageRatingValue"] copy];
	_gaugeInfo = [dictionary[@"gaugeInfo"] copy];
	_groups = [dictionary[@"groups"] copy];
	_totalRatings = [dictionary[@"totalRatings"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_gaugeInfo = [coder decodeObjectForKey:@"gaugeInfo"];
	_averageRatingValue = [coder decodeObjectForKey:@"averageRatingValue"];
	_totalRatings = [coder decodeObjectForKey:@"totalRatings"];
	_groups = [coder decodeObjectForKey:@"groups"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.gaugeInfo != nil) [coder encodeObject:self.gaugeInfo forKey:@"gaugeInfo"];
	if (self.averageRatingValue != nil) [coder encodeObject:self.averageRatingValue forKey:@"averageRatingValue"];
	if (self.totalRatings != nil) [coder encodeObject:self.totalRatings forKey:@"totalRatings"];
	if (self.groups != nil) [coder encodeObject:self.groups forKey:@"groups"];
}

@end