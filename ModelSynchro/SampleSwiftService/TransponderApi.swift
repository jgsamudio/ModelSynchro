//
//  TransponderApi.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol TransponderApi {
    
    func addTransponder(accountId: String,
			addTransponderRequest: Addtransponderrequest,
			completion: @escaping (_ result: Result<[Transponder]>) -> Void)
    
    func deleteTransponder(accountId: String,
			transponderId: String,
			completion: @escaping (_ result: Result<Transponder>) -> Void)
    
    func getAllTransponders(accountId: String,
			completion: @escaping (_ result: Result<[Transponder]>) -> Void)
    
    func getTransponderInfo(accountId: String,
			transponderId: String,
			completion: @escaping (_ result: Result<Transponder>) -> Void)
    
}