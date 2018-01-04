//
//  HowToUse.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

@implementation HowToUse

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [self init];
    if (self == nil) return nil;

	_dosageCount = [dictionary[@"dosageCount"] copy];
	_dosageHtml = [dictionary[@"dosageHtml"] copy];
	_dosageType = [dictionary[@"dosageType"] copy];

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [self init];
    if (self == nil) return nil;

	_dosageCount = [coder decodeObjectForKey:@"dosageCount"];
	_dosageHtml = [coder decodeObjectForKey:@"dosageHtml"];
	_dosageType = [coder decodeObjectForKey:@"dosageType"];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
	if (self.dosageCount != nil) [coder encodeObject:self.dosageCount forKey:@"dosageCount"];
	if (self.dosageHtml != nil) [coder encodeObject:self.dosageHtml forKey:@"dosageHtml"];
	if (self.dosageType != nil) [coder encodeObject:self.dosageType forKey:@"dosageType"];
}

@end