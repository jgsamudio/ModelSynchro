package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class UpdateVehicleRequest(
    @Json(name = "bluetoothId") val bluetoothId: String,
    @Json(name = "color") val color: String,
    @Json(name = "country") val country: String,
    @Json(name = "isLicensePlateTemporary") val isLicensePlateTemporary: Boolean,
    @Json(name = "isWindshieldMetalized") val isWindshieldMetalized: Boolean,
    @Json(name = "licensePlate") val licensePlate: String,
    @Json(name = "licensePlateExpirationDate") val licensePlateExpirationDate: String,
    @Json(name = "licensePlateNumberType") val licensePlateNumberType: String,
    @Json(name = "make") val make: String,
    @Json(name = "model") val model: String,
    @Json(name = "nickName") val nickName: String,
    @Json(name = "paymentMethodId") val paymentMethodId: String,
    @Json(name = "state") val state: String,
    @Json(name = "transponderId") val transponderId: String,
    @Json(name = "vehicleClass") val vehicleClass: String,
    @Json(name = "year") val year: String
)