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
#import "GaugeInfo.h"
#import "Groups.h"

@interface RatingAggregates: NSObject

@property (nonatomic, assign) NSInteger totalRatings;

@property (nonatomic, assign) double averageRatingValue;

@property (nonatomic, strong) GaugeInfo *gaugeInfo;

@property (nonatomic, strong) NSArray<Groups *> *groups;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end