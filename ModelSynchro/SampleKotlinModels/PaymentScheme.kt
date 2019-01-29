package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class PaymentScheme(
    @Json(name = "amountToAdd") val amountToAdd: Int,
    @Json(name = "paymentSchemeId") val paymentSchemeId: String,
    @Json(name = "threshold") val threshold: Int,
    @Json(name = "type") val type: String
)