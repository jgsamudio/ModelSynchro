//
//  Rating.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface Rating

@property (nonatomic, strong, readonly) NSInteger *count;

@property (nonatomic, strong, readonly) double *average;

	enum CodingKeys: String, CodingKey {
		case average = "average"
		case count = "count"
	}
@end