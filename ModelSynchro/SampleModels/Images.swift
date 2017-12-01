//
//  Images.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Images: Codable {
	let description: String
	let isDefault: Bool
	let jsonPlusSizeZoomUrls: String
	let jsonZoomUrls: String
	let name: String
	let plusName: String
	let plusSizeProductImageUrl: String
	let thumbnailUrl: String
	let url: String

	enum CodingKeys: String, CodingKey {
		case isDefault = "isDefault"
		case jsonPlusSizeZoomUrls = "jsonPlusSizeZoomUrls"
		case plusSizeProductImageUrl = "plusSizeProductImageUrl"
		case thumbnailUrl = "thumbnailUrl"
		case url = "url"
		case name = "name"
		case plusName = "plusName"
		case jsonZoomUrls = "jsonZoomUrls"
		case description = "description"
	}
}