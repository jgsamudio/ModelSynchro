//
//  Pricing.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface Pricing: NSObject

@property (nonatomic, strong, readonly) NSString *tier1;

@property (nonatomic, strong, readonly) NSString *tier2;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end