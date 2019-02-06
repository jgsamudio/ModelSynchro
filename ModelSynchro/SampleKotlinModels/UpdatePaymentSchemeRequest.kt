package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class UpdatePaymentSchemeRequest(
    @Json(name = "amountToAdd") val amountToAdd: Boolean,
    @Json(name = "threshold") val threshold: Boolean
)