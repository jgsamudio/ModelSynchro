package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class AuthenticationToken(
    @Json(name = "accessToken") val accessToken: String,
    @Json(name = "accounts") val accounts: ArrayList<Accounts>,
    @Json(name = "refreshToken") val refreshToken: String,
    @Json(name = "userId") val userId: String
)