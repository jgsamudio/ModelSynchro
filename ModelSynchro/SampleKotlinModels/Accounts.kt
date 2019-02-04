package com.kapsch.android.api.models

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Accounts(
    @Json(name = "accountId") val accountId: String,
    @Json(name = "balance") val balance: Balance,
    @Json(name = "default") val default: Boolean,
    @Json(name = "isBlocked") val isBlocked: Boolean,
    @Json(name = "name") val name: String,
    @Json(name = "paymentMethods") val paymentMethods: ArrayList<PaymentMethods>,
    @Json(name = "status") val status: String,
    @Json(name = "transponders") val transponders: ArrayList<Transponders>,
    @Json(name = "vehicles") val vehicles: ArrayList<Vehicles>
)