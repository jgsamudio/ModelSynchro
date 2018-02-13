//
//  Book.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Book: Codable {
	let author: String
	let categories: String
	let id: Int
	let lastCheckedOut: String?
	let lastCheckedOutBy: String
	let publisher: String
	let title: String
	let url: String

	enum CodingKeys: String, CodingKey {
		case author = "author"
		case categories = "categories"
		case id = "id"
		case lastCheckedOut = "lastCheckedOut"
		case lastCheckedOutBy = "lastCheckedOutBy"
		case publisher = "publisher"
		case title = "title"
		case url = "url"
	}
}