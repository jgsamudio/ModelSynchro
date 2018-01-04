//
//  Swatches.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Swatches.h"

@implementation Swatches

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_key = [dictionary[@"key"] copy];
	_value = [dictionary[@"value"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_value = [coder decodeObjectForKey:@"value"];
	_key = [coder decodeObjectForKey:@"key"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.value != nil) [coder encodeObject:self.value forKey:@"value"];
	if (self.key != nil) [coder encodeObject:self.key forKey:@"key"];
}

@end