//
//  AccountApi.swift
//  TheWing
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol AccountApi {
    
    func deleteAccount(accountId: String,
			completion: @escaping (_ result: Result<Account>))
    
    func getUserAccountDetails(accountId: String,
			completion: @escaping (_ result: Result<Account>))
    
    func getUserAccounts(,
			completion: @escaping (_ result: Result<[Account]>))
    
}