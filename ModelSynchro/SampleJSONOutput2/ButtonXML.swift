//
//  ButtonXML.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct ButtonXML: Codable {
	let document: Document

	enum CodingKeys: String, CodingKey {
		case document = "document"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: ButtonXML.CodingKeys.self)

        do {
            document = try container.decode(Document.self, forKey: .document)
        } catch {
            print("warning: document key is not found")
            throw APIError.noDataRetreived
        }
	}
}
