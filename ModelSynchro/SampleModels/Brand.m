//
//  Brand.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Brand.h"

@implementation Brand

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_id = [dictionary[@"id"] integerValue];
	_name = [dictionary[@"name"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_name = [coder decodeObjectForKey:@"name"];
	_id = [coder decodeIntegerForKey:@"id"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.name != nil) [coder encodeObject:self.name forKey:@"name"];
	[coder encodeInteger:self.id forKey:@"id"];
}

@end