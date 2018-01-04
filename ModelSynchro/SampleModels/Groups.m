//
//  Groups.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Groups.h"

@implementation Groups

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_count = [dictionary[@"count"] integerValue];
	_value = [dictionary[@"value"] integerValue];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_value = [coder decodeIntegerForKey:@"value"];
	_count = [coder decodeIntegerForKey:@"count"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	[coder encodeInteger:self.value forKey:@"value"];
	[coder encodeInteger:self.count forKey:@"count"];
}

@end