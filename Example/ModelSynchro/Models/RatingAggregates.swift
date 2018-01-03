//
//  RatingAggregates.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct RatingAggregates: Codable {
	let averageRatingValue: Double?
	let gaugeInfo: GaugeInfo
	let groups: [Groups]
	let totalRatings: Int?

	enum CodingKeys: String, CodingKey {
		case averageRatingValue = "averageRatingValue"
		case gaugeInfo = "gaugeInfo"
		case groups = "groups"
		case totalRatings = "totalRatings"
	}
}