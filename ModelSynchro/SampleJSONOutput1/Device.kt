package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Device(
	@Json(name = "adaptation") val adaptation: Adaptation,
	@Json(name = "orientation") val orientation: String,
	@Json(name = "id") val id: String
)