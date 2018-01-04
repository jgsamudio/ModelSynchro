//
//  Images.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
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
		case description = "description"
		case isDefault = "isDefault"
		case jsonPlusSizeZoomUrls = "jsonPlusSizeZoomUrls"
		case jsonZoomUrls = "jsonZoomUrls"
		case name = "name"
		case plusName = "plusName"
		case plusSizeProductImageUrl = "plusSizeProductImageUrl"
		case thumbnailUrl = "thumbnailUrl"
		case url = "url"
	}
}