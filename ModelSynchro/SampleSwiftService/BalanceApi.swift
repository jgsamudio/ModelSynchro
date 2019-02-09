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
    
    func getAvailablePaymentSchemes(accountId: String,
			completion: @escaping (_ result: Result<[PaymentScheme]>))
    
    func getBalance(accountId: String,
			completion: @escaping (_ result: Result<Balance>))
    
    func updatePaymentScheme(accountId: String,
			paymentSchemeId: String,
			updatePaymentSchemeRequest: UpdatePaymentSchemeRequest,
			completion: @escaping (_ result: Result<[PaymentScheme]>))
    
}