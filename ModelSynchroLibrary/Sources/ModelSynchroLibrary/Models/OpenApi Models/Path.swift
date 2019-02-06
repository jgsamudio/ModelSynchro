//
//  Path.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Path: Codable {
	let /accounts: /account
	let /accounts/{account_id}: /accounts/{accountId}
	let /accounts/{account_id}/balance: /accounts/{accountId}/Balance
	let /accounts/{account_id}/balance/payment_schemes: /accounts/{accountId}/Balance/PaymentScheme
	let /accounts/{account_id}/balance/payment_schemes/{payment_scheme_id}: /accounts/{accountId}/Balance/PaymentSchemes/{PaymentSchemeId}
	let /accounts/{account_id}/financial: /accounts/{accountId}/Financial
	let /accounts/{account_id}/payments: /accounts/{accountId}/Payment
	let /accounts/{account_id}/payments/{payment_id}: /accounts/{accountId}/Payments/{PaymentId}
	let /accounts/{account_id}/statements: /accounts/{accountId}/Statement
	let /accounts/{account_id}/transactions: /accounts/{accountId}/Transaction
	let /accounts/{account_id}/transactions/{transaction_id}: /accounts/{accountId}/Transactions/{TransactionId}
	let /accounts/{account_id}/transactions/{transaction_id}/dispute: /accounts/{accountId}/Transactions/{TransactionId}/Dispute
	let /accounts/{account_id}/transponders: /accounts/{accountId}/Transponder
	let /accounts/{account_id}/transponders/{transponder_id}: /accounts/{accountId}/Transponders/{TransponderId}
	let /accounts/{account_id}/vehicles: /accounts/{accountId}/Vehicle
	let /accounts/{account_id}/vehicles/{vehicle_id}: /accounts/{accountId}/Vehicles/{VehicleId}
	let /users/availability: /users/availability
	let /users/configurations: /users/configuration
	let /users/forgot_password: /users/forgotPassword
	let /users/login: /users/login
	let /users/logout: /users/logout
	let /users/notifications: /users/notification
	let /users/provider_login: /users/providerLogin
	let /users/register: /users/register
	let /users/token: /users/token
	let /users/{user_id}: /users/{userId}
	let /utilities/states: /utilities/state
	let /vehicles/colors: /vehicles/color
	let /vehicles/makes: /vehicles/make
	let /vehicles/models: /vehicles/model
	let /vehicles/search: /vehicles/search

	enum CodingKeys: String, CodingKey {
		case /accounts = "/accounts"
		case /accounts/{account_id} = "/accounts/{account_id}"
		case /accounts/{account_id}/balance = "/accounts/{account_id}/balance"
		case /accounts/{account_id}/balance/payment_schemes = "/accounts/{account_id}/balance/payment_schemes"
		case /accounts/{account_id}/balance/payment_schemes/{payment_scheme_id} = "/accounts/{account_id}/balance/payment_schemes/{payment_scheme_id}"
		case /accounts/{account_id}/financial = "/accounts/{account_id}/financial"
		case /accounts/{account_id}/payments = "/accounts/{account_id}/payments"
		case /accounts/{account_id}/payments/{payment_id} = "/accounts/{account_id}/payments/{payment_id}"
		case /accounts/{account_id}/statements = "/accounts/{account_id}/statements"
		case /accounts/{account_id}/transactions = "/accounts/{account_id}/transactions"
		case /accounts/{account_id}/transactions/{transaction_id} = "/accounts/{account_id}/transactions/{transaction_id}"
		case /accounts/{account_id}/transactions/{transaction_id}/dispute = "/accounts/{account_id}/transactions/{transaction_id}/dispute"
		case /accounts/{account_id}/transponders = "/accounts/{account_id}/transponders"
		case /accounts/{account_id}/transponders/{transponder_id} = "/accounts/{account_id}/transponders/{transponder_id}"
		case /accounts/{account_id}/vehicles = "/accounts/{account_id}/vehicles"
		case /accounts/{account_id}/vehicles/{vehicle_id} = "/accounts/{account_id}/vehicles/{vehicle_id}"
		case /users/availability = "/users/availability"
		case /users/configurations = "/users/configurations"
		case /users/forgot_password = "/users/forgot_password"
		case /users/login = "/users/login"
		case /users/logout = "/users/logout"
		case /users/notifications = "/users/notifications"
		case /users/provider_login = "/users/provider_login"
		case /users/register = "/users/register"
		case /users/token = "/users/token"
		case /users/{user_id} = "/users/{user_id}"
		case /utilities/states = "/utilities/states"
		case /vehicles/colors = "/vehicles/colors"
		case /vehicles/makes = "/vehicles/makes"
		case /vehicles/models = "/vehicles/models"
		case /vehicles/search = "/vehicles/search"
	}
}
