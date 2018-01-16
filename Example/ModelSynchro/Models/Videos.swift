//
//  Videos.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/16/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Videos: Codable {
	let analyticCat: String?
	let analyticName: String?
	let distTypeId: Bool?
	let formattedHttpRuntime: String?
	let height: Int?
	let httpRuntime: Int?
	let label: String?
	let thumbNailIsCustom: Bool?
	let thumbNailUrl: String?
	let videoType: String?
	let width: Int?
	let youTubeVideoId: String?

	enum CodingKeys: String, CodingKey {
		case analyticCat = "analyticCat"
		case analyticName = "analyticName"
		case distTypeId = "distTypeId"
		case formattedHttpRuntime = "formattedHttpRuntime"
		case height = "height"
		case httpRuntime = "httpRuntime"
		case label = "label"
		case thumbNailIsCustom = "thumbNailIsCustom"
		case thumbNailUrl = "thumbNailUrl"
		case videoType = "videoType"
		case width = "width"
		case youTubeVideoId = "youTubeVideoId"
	}
}