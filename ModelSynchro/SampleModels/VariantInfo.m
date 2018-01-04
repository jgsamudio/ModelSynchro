//
//  VariantInfo.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "VariantInfo.h"

@implementation VariantInfo

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_callout = [dictionary[@"callout"] copy];
	_codes = [dictionary[@"codes"] copy];
	_isPlusSize = [dictionary[@"isPlusSize"] copy];
	_sku = [dictionary[@"sku"] copy];
	_webId = [dictionary[@"webId"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_callout = [coder decodeObjectForKey:@"callout"];
	_codes = [coder decodeObjectForKey:@"codes"];
	_webId = [coder decodeObjectForKey:@"webId"];
	_sku = [coder decodeObjectForKey:@"sku"];
	_isPlusSize = [coder decodeObjectForKey:@"isPlusSize"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.callout != nil) [coder encodeObject:self.callout forKey:@"callout"];
	if (self.codes != nil) [coder encodeObject:self.codes forKey:@"codes"];
	if (self.webId != nil) [coder encodeObject:self.webId forKey:@"webId"];
	if (self.sku != nil) [coder encodeObject:self.sku forKey:@"sku"];
	if (self.isPlusSize != nil) [coder encodeObject:self.isPlusSize forKey:@"isPlusSize"];
}

@end