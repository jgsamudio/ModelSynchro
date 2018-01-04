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

	_sizes = [dictionary[@"sizes"] copy];
	_swatches = [dictionary[@"swatches"] copy];
	_widths = [dictionary[@"widths"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_widths = [coder decodeObjectForKey:@"widths"];
	_swatches = [coder decodeObjectForKey:@"swatches"];
	_sizes = [coder decodeObjectForKey:@"sizes"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.widths != nil) [coder encodeObject:self.widths forKey:@"widths"];
	if (self.swatches != nil) [coder encodeObject:self.swatches forKey:@"swatches"];
	if (self.sizes != nil) [coder encodeObject:self.sizes forKey:@"sizes"];
}

@end