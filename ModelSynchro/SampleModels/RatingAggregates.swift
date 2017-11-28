//
//  RatingAggregates.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct RatingAggregates: Codable {
	let gaugeInfo: GaugeInfo
	let averageRatingValue: Double
	let totalRatings: Int
	let groups: [Groups]
}