package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Color(
	@Json(name = "key") val key: String,
	@Json(name = "alpha") val alpha: String,
	@Json(name = "green") val green: String,
	@Json(name = "colorSpace") val colorSpace: String,
	@Json(name = "blue") val blue: String,
	@Json(name = "red") val red: String,
	@Json(name = "customColorSpace") val customColorSpace: String
	@Json(name = "customColorSpace") val customColorSpace: String?
)