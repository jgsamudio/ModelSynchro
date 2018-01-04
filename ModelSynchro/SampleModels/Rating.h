//
//  Rating.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface Rating: NSObject

@property (nonatomic, strong, readonly) NSInteger *count;

@property (nonatomic, strong, readonly) double *average;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end