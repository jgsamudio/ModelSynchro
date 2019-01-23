package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class PaymentMethods(
	@Json(name = "isPrimary") val isPrimary: Boolean,
	@Json(name = "paymentMethodId") val paymentMethodId: String,
	@Json(name = "paymentObject") val paymentObject: PaymentObject,
	@Json(name = "type") val type: String
)