//
//  KillSwitch.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

struct KillSwitch: Codable {
	let apiInactive: Bool?
	let apiInactiveUserMessage: String?
	let badVersions: [BadVersions]?
	let forceUpdateUserMessage: String?
	let minVersion: String?
	let retryInterval: Int?
	let userAgentWhiteList: [UserAgentWhiteList]?
}