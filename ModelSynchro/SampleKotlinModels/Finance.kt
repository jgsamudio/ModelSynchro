package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Finance(
    @Json(name = "amount") val amount: Int,
    @Json(name = "balanceAmount") val balanceAmount: Int,
    @Json(name = "description") val description: String,
    @Json(name = "time") val time: String,
    @Json(name = "type") val type: String
)