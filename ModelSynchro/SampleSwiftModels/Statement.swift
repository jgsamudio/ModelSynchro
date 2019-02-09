//
//  Statement.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Statement: Codable {
	let issuingDate: String
	let outstandingBalance: Double
	let statementId: String

	enum CodingKeys: String, CodingKey {
		case issuingDate = "issuingDate"
		case outstandingBalance = "outstandingBalance"
		case statementId = "statementId"
	}
}
