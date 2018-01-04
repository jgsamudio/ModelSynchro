//
//  Contents.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@implementation Contents

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_appliesToProductId = [dictionary[@"appliesToProductId"] copy];
	_contentHtml = [dictionary[@"contentHtml"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_appliesToProductId = [coder decodeObjectForKey:@"appliesToProductId"];
	_contentHtml = [coder decodeObjectForKey:@"contentHtml"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.appliesToProductId != nil) [coder encodeObject:self.appliesToProductId forKey:@"appliesToProductId"];
	if (self.contentHtml != nil) [coder encodeObject:self.contentHtml forKey:@"contentHtml"];
}

@end