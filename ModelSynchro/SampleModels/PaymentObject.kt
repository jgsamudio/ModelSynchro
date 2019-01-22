package 

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class PaymentObject(
	@Json(name = "lastFourDigits") val lastFourDigits: String,
	@Json(name = "expirationMonth") val expirationMonth: Boolean,
	@Json(name = "name") val name: String,
	@Json(name = "cardType") val cardType: String,
	@Json(name = "bankName") val bankName: String,
	@Json(name = "routingNumber") val routingNumber: String,
	@Json(name = "accountNumber") val accountNumber: String,
	@Json(name = "expirationYear") val expirationYear: Int
	@Json(name = "expirationYear") val expirationYear: Int?
)