//
//  Contents.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 12/01/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Contents: Codable {
	let contentHtml: String
	let productId: Int // let appliesToProductId: Int

	enum CodingKeys: String, CodingKey {
		case productId = "appliesToProductId"
		case contentHtml = "contentHtml"
	}
}