//
//  PaymentApi.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol PaymentApi {
    
    func addNewPaymentMethod(accountId: String,
			addPaymentMethodRequest: AddPaymentMethodRequest,
			completion: @escaping (_ result: Result<[PaymentMethod]>) -> Void)
    
    func deletePaymentMethod(accountId: String,
			paymentId: String,
			completion: @escaping (_ result: Result<PaymentMethod>) -> Void)
    
    func getAllPaymentMethods(accountId: String,
			completion: @escaping (_ result: Result<[PaymentMethod]>) -> Void)
    
    func getPaymentMethod(accountId: String,
			paymentId: String,
			completion: @escaping (_ result: Result<PaymentMethod>) -> Void)
    
    func updatePaymentMethod(accountId: String,
			paymentId: String,
			updatePaymentMethodRequest: UpdatePaymentMethodRequest,
			completion: @escaping (_ result: Result<PaymentMethod>) -> Void)
    
}