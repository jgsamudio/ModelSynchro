package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Balance(
	@Json(name = "paymentScheme") val paymentScheme: PaymentScheme,
	@Json(name = "pendingBalance") val pendingBalance: Double,
	@Json(name = "balance") val balance: Double
)