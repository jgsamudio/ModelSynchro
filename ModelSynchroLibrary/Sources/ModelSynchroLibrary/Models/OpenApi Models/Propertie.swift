//
//  Propertie.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/06/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Propertie: Codable {
	let issuingDate: IssuingDate?
	let outstandingBalance: OutstandingBalance
	let statementId: StatementId?
	let modelId: ModelId?
	let name: Name?
	let amount: Amount?
	let balanceAmount: BalanceAmount?
	let description: Description?
	let time: Time?
	let type: Type?
	let discountedPrice: DiscountedPrice?
	let isConfirmed: IsConfirmed?
	let isPeakHours: IsPeakHour?
	let price: Price?
	let tollGantry: TollGantry?
	let transactionId: TransactionId?
	let transponder: Transponder?
	let vehicle: Vehicle?
	let isSelected: IsSelected?
	let label: Label?
	let sortOptionId: SortOptionId?
	let code: Code?
	let message: Message?
	let number: Number?
	let tollingAgencyName: TollingAgencyName?
	let transponderId: TransponderId?
	let address: Addres?
	let email: Email?
	let firstName: FirstName?
	let lastName: LastName?
	let phone: Phone?
	let token: Token?
	let accounts: Account?
	let addresses: Address?
	let userId: UserId?
	let isPrimary: IsPrimary?
	let makeId: MakeId?
	let providerName: ProviderName?
	let providerToken: ProviderToken?
	let bluetoothId: BluetoothId?
	let color: Color?
	let country: Country?
	let isLicensePlateTemporary: IsLicensePlateTemporary?
	let isWindshieldMetalized: IsWindshieldMetalized?
	let licensePlate: LicensePlate?
	let licensePlateExpirationDate: LicensePlateExpirationDate?
	let licensePlateNumberType: LicensePlateNumberType?
	let make: Make?
	let model: Model?
	let nickName: NickName?
	let paymentMethodId: PaymentMethodId?
	let state: State?
	let vehicleClass: VehicleClas?
	let year: Year?
	let amountToAdd: AmountToAdd?
	let threshold: Threshold?
	let accountId: AccountId?
	let deeplink: Deeplink?
	let notificationId: NotificationId?
	let password: Password?
	let regularExpressions: RegularExpression?
	let latitude: Latitude?
	let longitude: Longitude?
	let tollGantryId: TollGantryId?
	let accessToken: AccessToken?
	let refreshToken: RefreshToken?
	let address1: Address1?
	let address2: Address2?
	let addressId: AddressId?
	let city: City?
	let postalCode: PostalCode?
	let paymentSchemeId: PaymentSchemeId?
	let accountNumber: AccountNumber?
	let bankName: BankName?
	let cardType: CardType?
	let expirationMonth: ExpirationMonth?
	let expirationYear: ExpirationYear?
	let lastFourDigits: LastFourDigit?
	let routingNumber: RoutingNumber?
	let colorId: ColorId?
	let balance: Balance?
	let paymentScheme: PaymentScheme?
	let pendingBalance: PendingBalance?
	let paymentObject: PaymentObject?
	let default: Default?
	let isBlocked: IsBlocked?
	let paymentMethods: PaymentMethod?
	let status: Statu?
	let transponders: Transponder?
	let vehicles: Vehicle?
	let virtualTransponderId: VirtualTransponderId?
	let notifications: Notification?
	let sortOptions: SortOption?
	let value: Value?
	let stateCode: StateCode?
	let vehicleId: VehicleId?
	let imageUrl: ImageUrl?
	let licensePlateNumber: LicensePlateNumber?
	let isAvailable: IsAvailable?

	enum CodingKeys: String, CodingKey {
		case accessToken = "accessToken"
		case accountId = "accountId"
		case accountNumber = "accountNumber"
		case accounts = "accounts"
		case address = "address"
		case address1 = "address1"
		case address2 = "address2"
		case addressId = "addressId"
		case addresses = "addresses"
		case amount = "amount"
		case amountToAdd = "amountToAdd"
		case balance = "balance"
		case balanceAmount = "balanceAmount"
		case bankName = "bankName"
		case bluetoothId = "bluetoothId"
		case cardType = "cardType"
		case city = "city"
		case code = "code"
		case color = "color"
		case colorId = "colorId"
		case country = "country"
		case deeplink = "deeplink"
		case default = "default"
		case description = "description"
		case discountedPrice = "discountedPrice"
		case email = "email"
		case expirationMonth = "expirationMonth"
		case expirationYear = "expirationYear"
		case firstName = "firstName"
		case imageUrl = "imageUrl"
		case isAvailable = "isAvailable"
		case isBlocked = "isBlocked"
		case isConfirmed = "isConfirmed"
		case isLicensePlateTemporary = "isLicensePlateTemporary"
		case isPeakHours = "isPeakHours"
		case isPrimary = "isPrimary"
		case isSelected = "isSelected"
		case isWindshieldMetalized = "isWindshieldMetalized"
		case issuingDate = "issuingDate"
		case label = "label"
		case lastFourDigits = "lastFourDigits"
		case lastName = "lastName"
		case latitude = "latitude"
		case licensePlate = "licensePlate"
		case licensePlateExpirationDate = "licensePlateExpirationDate"
		case licensePlateNumber = "licensePlateNumber"
		case licensePlateNumberType = "licensePlateNumberType"
		case longitude = "longitude"
		case make = "make"
		case makeId = "makeId"
		case message = "message"
		case model = "model"
		case modelId = "modelId"
		case name = "name"
		case nickName = "nickName"
		case notificationId = "notificationId"
		case notifications = "notifications"
		case number = "number"
		case outstandingBalance = "outstandingBalance"
		case password = "password"
		case paymentMethodId = "paymentMethodId"
		case paymentMethods = "paymentMethods"
		case paymentObject = "paymentObject"
		case paymentScheme = "paymentScheme"
		case paymentSchemeId = "paymentSchemeId"
		case pendingBalance = "pendingBalance"
		case phone = "phone"
		case postalCode = "postalCode"
		case price = "price"
		case providerName = "providerName"
		case providerToken = "providerToken"
		case refreshToken = "refreshToken"
		case regularExpressions = "regularExpressions"
		case routingNumber = "routingNumber"
		case sortOptionId = "sortOptionId"
		case sortOptions = "sortOptions"
		case state = "state"
		case stateCode = "stateCode"
		case statementId = "statementId"
		case status = "status"
		case threshold = "threshold"
		case time = "time"
		case token = "token"
		case tollGantry = "tollGantry"
		case tollGantryId = "tollGantryId"
		case tollingAgencyName = "tollingAgencyName"
		case transactionId = "transactionId"
		case transponder = "transponder"
		case transponderId = "transponderId"
		case transponders = "transponders"
		case type = "type"
		case userId = "userId"
		case value = "value"
		case vehicle = "vehicle"
		case vehicleClass = "vehicleClass"
		case vehicleId = "vehicleId"
		case vehicles = "vehicles"
		case virtualTransponderId = "virtualTransponderId"
		case year = "year"
	}
}
