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

	self.area = [dictionary[@"area"] integerValue];
	self.contentHtml = [dictionary[@"contentHtml"] copy];
	self.description = [dictionary[@"description"] copy];
	self.displayPosition = [dictionary[@"displayPosition"] integerValue];
	self.id = [dictionary[@"id"] integerValue];
	self.type = [dictionary[@"type"] integerValue];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.contentHtml = [coder decodeObjectForKey:@"contentHtml"];
	self.id = [coder decodeIntegerForKey:@"id"];
	self.area = [coder decodeIntegerForKey:@"area"];
	self.displayPosition = [coder decodeIntegerForKey:@"displayPosition"];
	self.type = [coder decodeIntegerForKey:@"type"];
	self.description = [coder decodeObjectForKey:@"description"];

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