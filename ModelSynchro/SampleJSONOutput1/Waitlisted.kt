package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Waitlisted(
	@Json(name = "updatedAt") val updatedAt: String,
	@Json(name = "checked_in") val checked_in: Boolean,
	@Json(name = "userId") val userId: String
)