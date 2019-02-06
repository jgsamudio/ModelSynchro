package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class SearchVehicleRequest(
    @Json(name = "licensePlateNumber") val licensePlateNumber: String,
    @Json(name = "state") val state: String
)