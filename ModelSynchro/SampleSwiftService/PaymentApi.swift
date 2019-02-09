//
//  PaymentApi.swift
//  TheWing
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol PaymentApi {
    
    func getPaymentMethod(accountId: String,
			paymentId: String, completion: @escaping (_ result: Result<PaymentMethod>))
    
    func updatePaymentMethod(accountId: String,
			paymentId: String,
			updatePaymentMethodRequest: UpdatePaymentMethodRequest, completion: @escaping (_ result: Result<PaymentMethod>))
    
}