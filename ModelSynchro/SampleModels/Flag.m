//
//  Flag.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@implementation Flag

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_className = [dictionary[@"className"] copy];
	_isSoldOut = [dictionary[@"isSoldOut"] copy];
	_isTodaysSpecial = [dictionary[@"isTodaysSpecial"] copy];
	_name = [dictionary[@"name"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_className = [coder decodeObjectForKey:@"className"];
	_isSoldOut = [coder decodeObjectForKey:@"isSoldOut"];
	_name = [coder decodeObjectForKey:@"name"];
	_isTodaysSpecial = [coder decodeObjectForKey:@"isTodaysSpecial"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.className != nil) [coder encodeObject:self.className forKey:@"className"];
	if (self.isSoldOut != nil) [coder encodeObject:self.isSoldOut forKey:@"isSoldOut"];
	if (self.name != nil) [coder encodeObject:self.name forKey:@"name"];
	if (self.isTodaysSpecial != nil) [coder encodeObject:self.isTodaysSpecial forKey:@"isTodaysSpecial"];
}

@end