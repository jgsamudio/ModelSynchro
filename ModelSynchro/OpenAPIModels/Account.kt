package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Account(
	@Json(name = "name") val name: String,
	@Json(name = "status") val status: String,
	@Json(name = "isBlocked") val isBlocked: Boolean,
	@Json(name = "accountId") val accountId: String,
	@Json(name = "balance") val balance: Balance
)