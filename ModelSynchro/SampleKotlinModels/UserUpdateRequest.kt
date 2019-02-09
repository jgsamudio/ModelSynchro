package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class UserUpdateRequest(
    @Json(name = "email") val email: String,
    @Json(name = "firstName") val firstName: String,
    @Json(name = "lastName") val lastName: String,
    @Json(name = "phone") val phone: String
)