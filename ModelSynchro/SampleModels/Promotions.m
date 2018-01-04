//
//  Promotions.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Promotions.h"

@implementation Promotions

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_articleId = [dictionary[@"articleId"] integerValue];
	_id = [dictionary[@"id"] integerValue];
	_message = [dictionary[@"message"] copy];
	_type = [dictionary[@"type"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_articleId = [coder decodeIntegerForKey:@"articleId"];
	_message = [coder decodeObjectForKey:@"message"];
	_type = [coder decodeObjectForKey:@"type"];
	_id = [coder decodeIntegerForKey:@"id"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	[coder encodeInteger:self.articleId forKey:@"articleId"];
	if (self.message != nil) [coder encodeObject:self.message forKey:@"message"];
	if (self.type != nil) [coder encodeObject:self.type forKey:@"type"];
	[coder encodeInteger:self.id forKey:@"id"];
}

@end