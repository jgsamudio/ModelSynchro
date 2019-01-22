package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class UserInfo(
	@Json(name = "eventId") val eventId: String,
	@Json(name = "bookmarked") val bookmarked: Boolean,
	@Json(name = "waitlisted") val waitlisted: Boolean,
	@Json(name = "going") val going: Boolean
	@Json(name = "guests") val guests: Array<Guests>?,
	@Json(name = "going") val going: Boolean?,
	@Json(name = "guestsCount") val guestsCount: Int?
)