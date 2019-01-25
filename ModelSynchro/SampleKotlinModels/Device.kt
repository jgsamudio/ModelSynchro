package com.sample.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Device(
    @Json(name = "adaptation") val adaptation: Adaptation,
    @Json(name = "id") val id: String,
    @Json(name = "orientation") val orientation: String
)