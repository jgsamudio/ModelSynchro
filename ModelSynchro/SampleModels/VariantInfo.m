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

	self.callout = [dictionary[@"callout"] copy];
	self.codes = [dictionary[@"codes"] copy];
	self.isPlusSize = [dictionary[@"isPlusSize"] boolValue];
	self.sku = [dictionary[@"sku"] copy];
	self.webId = [dictionary[@"webId"] integerValue];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.callout = [coder decodeObjectForKey:@"callout"];
	self.codes = [coder decodeObjectForKey:@"codes"];
	self.webId = [coder decodeIntegerForKey:@"webId"];
	self.sku = [coder decodeObjectForKey:@"sku"];
	self.isPlusSize = [coder decodeBoolForKey:@"isPlusSize"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.callout != nil) [coder encodeObject:self.callout forKey:@"callout"];
	if (self.codes != nil) [coder encodeObject:self.codes forKey:@"codes"];
	[coder encodeInteger:self.webId forKey:@"webId"];
	if (self.sku != nil) [coder encodeObject:self.sku forKey:@"sku"];
	[coder encodeBool:self.isPlusSize forKey:@"isPlusSize"];
}

@end