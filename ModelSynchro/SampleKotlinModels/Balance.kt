package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Balance(
    @Json(name = "balance") val balance: Double,
    @Json(name = "paymentScheme") val paymentScheme: PaymentScheme,
    @Json(name = "pendingBalance") val pendingBalance: Double
)