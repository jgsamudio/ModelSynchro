package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class AuthenticationToken(
	@Json(name = "userId") val userId: String,
	@Json(name = "refreshToken") val refreshToken: String,
	@Json(name = "accessToken") val accessToken: String
	@Json(name = "userId") val userId: String?,
	@Json(name = "refreshToken") val refreshToken: String?
)