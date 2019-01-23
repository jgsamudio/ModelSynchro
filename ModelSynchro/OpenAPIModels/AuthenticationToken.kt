package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class AuthenticationToken(
	@Json(name = "accessToken") val accessTokenCool: String, // @Json(name = "accessToken") val accessToken: String,
	@Json(name = "refreshToken") val refreshToken: String,
	@Json(name = "userId") val userId: String
)