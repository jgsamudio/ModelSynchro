//
//  Videos.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Videos: Codable {
	let analyticCat: String?
	let analyticName: String?
	let distTypeId: Bool?
	let height: Int?
	let label: String?
	let thumbNailIsCustom: Bool?
	let thumbNailUrl: String?
	let videoType: String?
	let width: Int?
	let youTubeVideoId: String?

	enum CodingKeys: String, CodingKey {
		case height = "height"
		case analyticCat = "analyticCat"
		case width = "width"
		case distTypeId = "distTypeId"
		case thumbNailIsCustom = "thumbNailIsCustom"
		case youTubeVideoId = "youTubeVideoId"
		case thumbNailUrl = "thumbNailUrl"
		case videoType = "videoType"
		case analyticName = "analyticName"
		case label = "label"
	}
}