//
//  GaugeInfo.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@implementation GaugeInfo

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_id = [dictionary[@"id"] copy];
	_maxLabel = [dictionary[@"maxLabel"] copy];
	_minLabel = [dictionary[@"minLabel"] copy];
	_name = [dictionary[@"name"] copy];
	_type = [dictionary[@"type"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_maxLabel = [coder decodeObjectForKey:@"maxLabel"];
	_type = [coder decodeObjectForKey:@"type"];
	_minLabel = [coder decodeObjectForKey:@"minLabel"];
	_name = [coder decodeObjectForKey:@"name"];
	_id = [coder decodeObjectForKey:@"id"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.maxLabel != nil) [coder encodeObject:self.maxLabel forKey:@"maxLabel"];
	if (self.type != nil) [coder encodeObject:self.type forKey:@"type"];
	if (self.minLabel != nil) [coder encodeObject:self.minLabel forKey:@"minLabel"];
	if (self.name != nil) [coder encodeObject:self.name forKey:@"name"];
	if (self.id != nil) [coder encodeObject:self.id forKey:@"id"];
}

@end