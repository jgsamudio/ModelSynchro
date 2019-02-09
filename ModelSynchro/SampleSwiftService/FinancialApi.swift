//
//  FinancialApi.swift
//  TheWing
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol FinancialApi {
    
    func getAllFinancialTransactions(accountId: String,
			dateFrom: String,
			dateTo: String,
			completion: @escaping (_ result: Result<[Finance]>))
    
}