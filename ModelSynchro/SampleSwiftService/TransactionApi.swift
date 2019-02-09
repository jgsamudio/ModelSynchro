//
//  TransactionApi.swift
//  ModelSynchro
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
			completion: @escaping (_ result: Result<Transaction>) -> Void)
    
    func disputeTransaction(accountId: String,
			transactionId: String,
			completion: @escaping (_ result: Result<Transaction>) -> Void)
    
    func getAllTransactions(accountId: String,
			dateFrom: String,
			dateTo: String,
			limit: Int,
			offset: Int,
			sort: String,
			completion: @escaping (_ result: Result<[Transaction]>) -> Void)
    
    func getTransaction(accountId: String,
			transactionId: String,
			completion: @escaping (_ result: Result<Transaction>) -> Void)
    
    func updateTransaction(accountId: String,
			transactionId: String,
			updateTransactionRequest: Updatetransactionrequest,
			completion: @escaping (_ result: Result<Transaction>) -> Void)
    
}