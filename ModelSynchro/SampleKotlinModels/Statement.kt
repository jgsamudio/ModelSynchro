package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Statement(
    @Json(name = "issuingDate") val issuingDate: String,
    @Json(name = "outstandingBalance") val outstandingBalance: Double,
    @Json(name = "statementId") val statementId: String
)