//
//  Sharing.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@implementation Sharing

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_type = [dictionary[@"type"] copy];
	_uri = [dictionary[@"uri"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_type = [coder decodeObjectForKey:@"type"];
	_uri = [coder decodeObjectForKey:@"uri"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.type != nil) [coder encodeObject:self.type forKey:@"type"];
	if (self.uri != nil) [coder encodeObject:self.uri forKey:@"uri"];
}

@end