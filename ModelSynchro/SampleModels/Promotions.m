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

	self.articleId = [dictionary[@"articleId"] integerValue];
	self.id = [dictionary[@"id"] integerValue];
	self.message = [dictionary[@"message"] copy];
	self.type = [dictionary[@"type"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.articleId = [coder decodeIntegerForKey:@"articleId"];
	self.message = [coder decodeObjectForKey:@"message"];
	self.type = [coder decodeObjectForKey:@"type"];
	self.id = [coder decodeIntegerForKey:@"id"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	[coder encodeInteger:self.articleId forKey:@"articleId"];
	if (self.message != nil) [coder encodeObject:self.message forKey:@"message"];
	if (self.type != nil) [coder encodeObject:self.type forKey:@"type"];
	[coder encodeInteger:self.id forKey:@"id"];
}

@end