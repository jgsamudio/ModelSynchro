package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class PaymentObject(
	@Json(name = "accountNumber") val accountNumber: String,
	@Json(name = "bankName") val bankName: String,
	@Json(name = "cardType") val cardType: String,
	@Json(name = "expirationMonth") val expirationMonth: Boolean,
	@Json(name = "expirationYear") val expirationYear: Int,
	@Json(name = "lastFourDigits") val lastFourDigits: String,
	@Json(name = "name") val name: String,
	@Json(name = "routingNumber") val routingNumber: String
)