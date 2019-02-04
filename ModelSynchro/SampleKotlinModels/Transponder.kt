package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Transponder(
    @Json(name = "number") val number: String,
    @Json(name = "tollingAgencyName") val tollingAgencyName: String,
    @Json(name = "transponderId") val transponderId: String
)