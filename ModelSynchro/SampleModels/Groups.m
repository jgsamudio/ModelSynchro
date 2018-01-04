//
//  Groups.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

@implementation Groups

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_count = [dictionary[@"count"] copy];
	_value = [dictionary[@"value"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_value = [coder decodeObjectForKey:@"value"];
	_count = [coder decodeObjectForKey:@"count"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.value != nil) [coder encodeObject:self.value forKey:@"value"];
	if (self.count != nil) [coder encodeObject:self.count forKey:@"count"];
}

@end