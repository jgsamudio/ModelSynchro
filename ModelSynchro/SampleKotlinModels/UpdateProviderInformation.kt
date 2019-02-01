package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class UpdateProviderInformation(
    @Json(name = "email") val email: String,
    @Json(name = "providerName") val providerName: String,
    @Json(name = "providerToken") val providerToken: String
)