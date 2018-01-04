//
//  Promotions.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@implementation Promotions

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_articleId = [dictionary[@"articleId"] copy];
	_id = [dictionary[@"id"] copy];
	_message = [dictionary[@"message"] copy];
	_type = [dictionary[@"type"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_articleId = [coder decodeObjectForKey:@"articleId"];
	_message = [coder decodeObjectForKey:@"message"];
	_type = [coder decodeObjectForKey:@"type"];
	_id = [coder decodeObjectForKey:@"id"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.articleId != nil) [coder encodeObject:self.articleId forKey:@"articleId"];
	if (self.message != nil) [coder encodeObject:self.message forKey:@"message"];
	if (self.type != nil) [coder encodeObject:self.type forKey:@"type"];
	if (self.id != nil) [coder encodeObject:self.id forKey:@"id"];
}

@end