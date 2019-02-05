package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class AuthenticationToken(
    @Json(name = "accessToken") val accessToken: String?,
    @Json(name = "accounts") val accounts: ArrayList<Account>?,
    @Json(name = "refreshToken") val refreshToken: String,
    @Json(name = "userId") val userId: String?
    @Json(name = "error") val error: String?
)