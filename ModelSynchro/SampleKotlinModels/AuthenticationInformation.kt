package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class AuthenticationInformation(
    @Json(name = "email") val email: String,
    @Json(name = "password") val password: String
)