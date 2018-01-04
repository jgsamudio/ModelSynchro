//
//  Disclaimers.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Disclaimers.h"

@implementation Disclaimers

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_area = [dictionary[@"area"] integerValue];
	_contentHtml = [dictionary[@"contentHtml"] copy];
	_description = [dictionary[@"description"] copy];
	_displayPosition = [dictionary[@"displayPosition"] integerValue];
	_id = [dictionary[@"id"] integerValue];
	_type = [dictionary[@"type"] integerValue];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_contentHtml = [coder decodeObjectForKey:@"contentHtml"];
	_id = [coder decodeIntegerForKey:@"id"];
	_area = [coder decodeIntegerForKey:@"area"];
	_displayPosition = [coder decodeIntegerForKey:@"displayPosition"];
	_type = [coder decodeIntegerForKey:@"type"];
	_description = [coder decodeObjectForKey:@"description"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.contentHtml != nil) [coder encodeObject:self.contentHtml forKey:@"contentHtml"];
	[coder encodeInteger:self.id forKey:@"id"];
	[coder encodeInteger:self.area forKey:@"area"];
	[coder encodeInteger:self.displayPosition forKey:@"displayPosition"];
	[coder encodeInteger:self.type forKey:@"type"];
	if (self.description != nil) [coder encodeObject:self.description forKey:@"description"];
}

@end