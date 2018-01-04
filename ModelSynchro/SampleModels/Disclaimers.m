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

	_area = [dictionary[@"area"] copy];
	_contentHtml = [dictionary[@"contentHtml"] copy];
	_description = [dictionary[@"description"] copy];
	_displayPosition = [dictionary[@"displayPosition"] copy];
	_id = [dictionary[@"id"] copy];
	_type = [dictionary[@"type"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_contentHtml = [coder decodeObjectForKey:@"contentHtml"];
	_id = [coder decodeObjectForKey:@"id"];
	_area = [coder decodeObjectForKey:@"area"];
	_displayPosition = [coder decodeObjectForKey:@"displayPosition"];
	_type = [coder decodeObjectForKey:@"type"];
	_description = [coder decodeObjectForKey:@"description"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.contentHtml != nil) [coder encodeObject:self.contentHtml forKey:@"contentHtml"];
	if (self.id != nil) [coder encodeObject:self.id forKey:@"id"];
	if (self.area != nil) [coder encodeObject:self.area forKey:@"area"];
	if (self.displayPosition != nil) [coder encodeObject:self.displayPosition forKey:@"displayPosition"];
	if (self.type != nil) [coder encodeObject:self.type forKey:@"type"];
	if (self.description != nil) [coder encodeObject:self.description forKey:@"description"];
}

@end