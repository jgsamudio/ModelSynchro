//
//  ProductOptions.m
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import "ProductOptions.h"

@implementation ProductOptions

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	self.sizes = [dictionary[@"sizes"] copy];
	self.swatches = [dictionary[@"swatches"] copy];
	self.widths = [dictionary[@"widths"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	self.widths = [coder decodeObjectForKey:@"widths"];
	self.swatches = [coder decodeObjectForKey:@"swatches"];
	self.sizes = [coder decodeObjectForKey:@"sizes"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.widths != nil) [coder encodeObject:self.widths forKey:@"widths"];
	if (self.swatches != nil) [coder encodeObject:self.swatches forKey:@"swatches"];
	if (self.sizes != nil) [coder encodeObject:self.sizes forKey:@"sizes"];
}

@end