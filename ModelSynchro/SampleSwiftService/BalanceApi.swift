//
//  BalanceApi.swift
//  TheWing
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol BalanceApi {
    
    func addFundsToBalance(accountId: String,
			addFundsToBalanceRequest: AddFundsToBalanceRequest,
			completion: @escaping (_ result: Result<Balance>))
    
    func getBalance(accountId: String,
			completion: @escaping (_ result: Result<Balance>))
    
}