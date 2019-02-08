package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class InlineResponse200(
    @Json(name = "accounts") val accounts: Array<Account>,
    @Json(name = "addresses") val addresses: Array<Address>,
    @Json(name = "email") val email: String,
    @Json(name = "firstName") val firstName: String,
    @Json(name = "lastName") val lastName: String,
    @Json(name = "phone") val phone: String,
    @Json(name = "userId") val userId: String
)