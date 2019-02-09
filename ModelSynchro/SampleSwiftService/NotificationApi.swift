//
//  NotificationApi.swift
//  TheWing
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol NotificationApi {
    
    func getAllNotifications(filter: String,
			limit: Int,
			offset: Int,
			sort: String, completion: @escaping (_ result: Result<NotificationCenter>))
    
}