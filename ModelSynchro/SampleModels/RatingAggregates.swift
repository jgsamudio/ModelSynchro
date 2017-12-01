//
//  RatingAggregates.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct RatingAggregates: Codable {
	let averageRatingValue: Double
	let gaugeInfo: GaugeInfo
	let groups: [Groups]
	let totalRatings: Int

	enum CodingKeys: String, CodingKey {
		case gaugeInfo = "gaugeInfo"
		case averageRatingValue = "averageRatingValue"
		case totalRatings = "totalRatings"
		case groups = "groups"
	}
}