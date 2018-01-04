//
//  RatingAggregates.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface RatingAggregates

@property (nonatomic, strong, readonly) GaugeInfo *gaugeInfo;

@property (nonatomic, strong, readonly) NSArray<Groups> *groups;

@property (nonatomic, strong, readonly) NSInteger *totalRatings;

@property (nonatomic, strong, readonly) double *averageRatingValue;

	enum CodingKeys: String, CodingKey {
		case averageRatingValue = "averageRatingValue"
		case gaugeInfo = "gaugeInfo"
		case groups = "groups"
		case totalRatings = "totalRatings"
	}
@end