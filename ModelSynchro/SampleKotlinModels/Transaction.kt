package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Transaction(
    @Json(name = "discountedPrice") val discountedPrice: Double,
    @Json(name = "isConfirmed") val isConfirmed: Boolean,
    @Json(name = "isPeakHours") val isPeakHours: Boolean,
    @Json(name = "price") val price: Double,
    @Json(name = "time") val time: String,
    @Json(name = "tollGantry") val tollGantry: TollGantry,
    @Json(name = "transactionId") val transactionId: String,
    @Json(name = "transponder") val transponder: Transponder,
    @Json(name = "vehicle") val vehicle: Vehicle
)