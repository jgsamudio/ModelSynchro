//
//  Contents.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "Contents.h"

@implementation Contents

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_appliesToProductId = [dictionary[@"appliesToProductId"] integerValue];
	_contentHtml = [dictionary[@"contentHtml"] copy];
	_keyValueGroups = [dictionary[@"keyValueGroups"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_appliesToProductId = [coder decodeIntegerForKey:@"appliesToProductId"];
	_contentHtml = [coder decodeObjectForKey:@"contentHtml"];
	_keyValueGroups = [coder decodeObjectForKey:@"keyValueGroups"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	[coder encodeInteger:self.appliesToProductId forKey:@"appliesToProductId"];
	if (self.contentHtml != nil) [coder encodeObject:self.contentHtml forKey:@"contentHtml"];
	if (self.keyValueGroups != nil) [coder encodeObject:self.keyValueGroups forKey:@"keyValueGroups"];
}

@end