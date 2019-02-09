//
//  UserApi.swift
//  TheWing
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol UserApi {
    
    func getAppConfiguration(, completion: @escaping (_ result: Result<AppConfiguration>))
    
    func getAvailability(postalCode: String, completion: @escaping (_ result: Result<Void>))
    
    func getUserInfo(userId: String, completion: @escaping (_ result: Result<User>))
    
    func refreshToken(authenticationRefreshTokenRequest: AuthenticationRefreshTokenRequest, completion: @escaping (_ result: Result<AuthenticationToken>))
    
    func updateUserInfo(userId: String,
			userUpdateRequest: UserUpdateRequest, completion: @escaping (_ result: Result<User>))
    
}