package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class ProviderAuthenticationInformation(
    @Json(name = "addresses") val addresses: Array<Addresses>,
    @Json(name = "email") val email: String,
    @Json(name = "firstName") val firstName: String,
    @Json(name = "lastName") val lastName: String,
    @Json(name = "paymentMethods") val paymentMethods: Array<PaymentMethods>,
    @Json(name = "phone") val phone: String,
    @Json(name = "transponders") val transponders: Array<Transponders>,
    @Json(name = "userId") val userId: String,
    @Json(name = "vehicles") val vehicles: Array<Vehicles>
)