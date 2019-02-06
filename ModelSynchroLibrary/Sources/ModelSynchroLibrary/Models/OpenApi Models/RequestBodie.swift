//
//  RequestBodie.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct RequestBodie: Codable {
	let auth: Auth
	let userArray: UserArray

	enum CodingKeys: String, CodingKey {
		case auth = "auth"
		case userArray = "userArray"
	}
}
