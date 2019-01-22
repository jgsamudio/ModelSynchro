package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Device(
	@Json(name = "id") val id: String,
	@Json(name = "adaptation") val adaptation: Adaptation,
	@Json(name = "orientation") val orientation: String
)