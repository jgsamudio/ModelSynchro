package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class NotificationCenter(
    @Json(name = "accounts") val accounts: ArrayList<Account>,
    @Json(name = "addresses") val addresses: ArrayList<Addresse>,
    @Json(name = "email") val email: String,
    @Json(name = "firstName") val firstName: String,
    @Json(name = "lastName") val lastName: String,
    @Json(name = "phone") val phone: String,
    @Json(name = "userId") val userId: String
)