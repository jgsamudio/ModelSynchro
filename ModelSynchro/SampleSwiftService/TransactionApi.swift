//
//  TransactionApi.swift
//  TheWing
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol TransactionApi {
    
    func deleteTransaction(accountId: String,
			transactionId: String,
			completion: @escaping (_ result: Result<Transaction>))
    
    func disputeTransaction(accountId: String,
			transactionId: String,
			completion: @escaping (_ result: Result<Transaction>))
    
    func getAllTransactions(accountId: String,
			dateFrom: String,
			dateTo: String,
			limit: Int,
			offset: Int,
			sort: String,
			completion: @escaping (_ result: Result<Transaction>))
    
    func getTransaction(accountId: String,
			transactionId: String,
			completion: @escaping (_ result: Result<Transaction>))
    
    func updateTransaction(accountId: String,
			transactionId: String,
			updateTransactionRequest: UpdateTransactionRequest,
			completion: @escaping (_ result: Result<Transaction>))
    
}