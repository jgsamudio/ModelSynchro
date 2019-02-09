//
//  AuthenticationApi.swift
//  TheWing
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol AuthenticationApi {
    
    func createUser(authenticationInformation: AuthenticationInformation,
			completion: @escaping (_ result: Result<AuthenticationToken>))
    
    func loginUser(authenticationInformation: AuthenticationInformation,
			completion: @escaping (_ result: Result<AuthenticationToken>))
    
    func loginUserWithAuth(providerAuthenticationInformation: ProviderAuthenticationInformation,
			completion: @escaping (_ result: Result<AuthenticationToken>))
    
}