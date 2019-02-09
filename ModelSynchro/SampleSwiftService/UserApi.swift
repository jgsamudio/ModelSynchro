//
//  UserApi.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol UserApi {
    
    func getAppConfiguration(completion: @escaping (_ result: Result<AppConfiguration>) -> Void)
    
    func getAvailability(postalCode: String,
			completion: @escaping (_ result: Result<Void>) -> Void)
    
    func getUserInfo(userId: String,
			completion: @escaping (_ result: Result<User>) -> Void)
    
    func logoutUser(completion: @escaping (_ result: Result<Void>) -> Void)
    
    func refreshToken(authenticationRefreshTokenRequest: Authenticationrefreshtokenrequest,
			completion: @escaping (_ result: Result<AuthenticationToken>) -> Void)
    
    func resetPassword(body: Body,
			completion: @escaping (_ result: Result<Void>) -> Void)
    
    func updateUserInfo(userId: String,
			userUpdateRequest: Userupdaterequest,
			completion: @escaping (_ result: Result<User>) -> Void)
    
}