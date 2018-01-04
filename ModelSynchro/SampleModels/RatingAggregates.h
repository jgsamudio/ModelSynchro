//
//  RatingAggregates.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface RatingAggregates: NSObject

@property (nonatomic, strong, readonly) GaugeInfo *gaugeInfo;

@property (nonatomic, strong, readonly) NSArray<Groups> *groups;

@property (nonatomic, strong, readonly) NSInteger *totalRatings;

@property (nonatomic, strong, readonly) double *averageRatingValue;

- (id)initWithDictionary:(NSDictionary *)dictionary

@end