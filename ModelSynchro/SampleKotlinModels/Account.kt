package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Account(
    @Json(name = "accountId") val accountId: String,
    @Json(name = "balance") val balance: Balance,
    @Json(name = "default") val default: Boolean,
    @Json(name = "isBlocked") val isBlocked: Boolean,
    @Json(name = "name") val name: String,
    @Json(name = "paymentMethods") val paymentMethods: Array<PaymentMethod>,
    @Json(name = "status") val status: String,
    @Json(name = "transponders") val transponders: Array<Transponder>,
    @Json(name = "vehicles") val vehicles: Array<Vehicle>
)