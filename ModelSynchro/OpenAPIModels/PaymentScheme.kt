package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class PaymentScheme(
	@Json(name = "threshold") val threshold: Int,
	@Json(name = "amountToAdd") val amountToAdd: Int, // @Json(name = "amountToAdd") val amountToAdd: Int,
	@Json(name = "paymentSchemeId") val paymentSchemeId: String,
	@Json(name = "type") val type: String
)