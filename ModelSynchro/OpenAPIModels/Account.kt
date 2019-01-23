package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Account(
	@Json(name = "balance") val balance: Balance,
	@Json(name = "status") val status: String,
	@Json(name = "isBlocked") val isBlocked: Boolean,
	@Json(name = "name") val name: String,
	@Json(name = "accountId") val accountId: String
)