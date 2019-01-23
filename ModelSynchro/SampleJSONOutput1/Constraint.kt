package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Constraint(
	@Json(name = "firstAttribute") val firstAttribute: String,
	@Json(name = "firstItem") val firstItem: String
	@Json(name = "id") val id: String,
	@Json(name = "secondAttribute") val secondAttribute: String,
	@Json(name = "secondItem") val secondItem: String,
)