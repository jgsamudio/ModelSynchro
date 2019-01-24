package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Transponders(
    @Json(name = "number") val number: String,
    @Json(name = "tollingAgencyName") val tollingAgencyName: String,
    @Json(name = "transponderId") val transponderId: String
)