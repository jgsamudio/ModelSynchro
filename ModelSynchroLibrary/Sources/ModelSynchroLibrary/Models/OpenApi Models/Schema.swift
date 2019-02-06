//
//  Schema.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Schema: Codable {
	let items: Item?
	let type: String
	let $ref: String?
	let account: Account?
	let addFundsToBalanceRequest: AddFundsToBalanceRequest?
	let addPaymentMethodRequest: AddPaymentMethodRequest?
	let addTransponderRequest: AddTransponderRequest?
	let addVehicleRequest: AddVehicleRequest?
	let address: Addres?
	let appConfiguration: AppConfiguration?
	let authenticationInformation: AuthenticationInformation?
	let authenticationRefreshTokenRequest: AuthenticationRefreshTokenRequest?
	let authenticationTokens: AuthenticationToken?
	let balance: Balance?
	let error: Error?
	let finance: Finance?
	let make: Make?
	let model: Model?
	let notification: Notification?
	let notificationCenter: NotificationCenter?
	let paymentMethod: PaymentMethod?
	let paymentObject: PaymentObject?
	let paymentScheme: PaymentScheme?
	let providerAuthenticationInformation: ProviderAuthenticationInformation?
	let regularExpression: RegularExpression?
	let searchVehicleRequest: SearchVehicleRequest?
	let sortOption: SortOption?
	let state: State?
	let statement: Statement?
	let tollGantry: TollGantry?
	let transaction: Transaction?
	let transponder: Transponder?
	let updatePaymentMethodRequest: UpdatePaymentMethodRequest?
	let updatePaymentSchemeRequest: UpdatePaymentSchemeRequest?
	let updateTransactionRequest: UpdateTransactionRequest?
	let updateVehicleRequest: UpdateVehicleRequest?
	let user: User?
	let userUpdateRequest: UserUpdateRequest?
	let vehicle: Vehicle?
	let vehicleColor: VehicleColor?
	let body: Body?
	let inline_response_200: InlineResponse200?
	let example: String?
	let format: String?

	enum CodingKeys: String, CodingKey {
		case $ref = "$ref"
		case account = "account"
		case addFundsToBalanceRequest = "addFundsToBalanceRequest"
		case addPaymentMethodRequest = "addPaymentMethodRequest"
		case addTransponderRequest = "addTransponderRequest"
		case addVehicleRequest = "addVehicleRequest"
		case address = "address"
		case appConfiguration = "appConfiguration"
		case authenticationInformation = "authenticationInformation"
		case authenticationRefreshTokenRequest = "authenticationRefreshTokenRequest"
		case authenticationTokens = "authenticationTokens"
		case balance = "balance"
		case body = "body"
		case error = "error"
		case example = "example"
		case finance = "finance"
		case format = "format"
		case inline_response_200 = "inline_response_200"
		case items = "items"
		case make = "make"
		case model = "model"
		case notification = "notification"
		case notificationCenter = "notificationCenter"
		case paymentMethod = "paymentMethod"
		case paymentObject = "paymentObject"
		case paymentScheme = "paymentScheme"
		case providerAuthenticationInformation = "providerAuthenticationInformation"
		case regularExpression = "regularExpression"
		case searchVehicleRequest = "searchVehicleRequest"
		case sortOption = "sortOption"
		case state = "state"
		case statement = "statement"
		case tollGantry = "tollGantry"
		case transaction = "transaction"
		case transponder = "transponder"
		case type = "type"
		case updatePaymentMethodRequest = "updatePaymentMethodRequest"
		case updatePaymentSchemeRequest = "updatePaymentSchemeRequest"
		case updateTransactionRequest = "updateTransactionRequest"
		case updateVehicleRequest = "updateVehicleRequest"
		case user = "user"
		case userUpdateRequest = "userUpdateRequest"
		case vehicle = "vehicle"
		case vehicleColor = "vehicleColor"
	}
}
