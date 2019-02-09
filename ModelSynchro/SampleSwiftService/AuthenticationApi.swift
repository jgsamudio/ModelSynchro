//
//  AuthenticationApi.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol AuthenticationApi {
    
    func createUser(authenticationInformation: Authenticationinformation,
			completion: @escaping (_ result: Result<AuthenticationToken>) -> Void)
    
    func loginUser(authenticationInformation: Authenticationinformation,
			completion: @escaping (_ result: Result<AuthenticationToken>) -> Void)
    
    func loginUserWithAuth(providerAuthenticationInformation: Providerauthenticationinformation,
			completion: @escaping (_ result: Result<AuthenticationToken>) -> Void)
    
}