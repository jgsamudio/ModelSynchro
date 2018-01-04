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

	_average = [dictionary[@"average"] copy];
	_count = [dictionary[@"count"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_count = [coder decodeObjectForKey:@"count"];
	_average = [coder decodeObjectForKey:@"average"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.count != nil) [coder encodeObject:self.count forKey:@"count"];
	if (self.average != nil) [coder encodeObject:self.average forKey:@"average"];
}

@end