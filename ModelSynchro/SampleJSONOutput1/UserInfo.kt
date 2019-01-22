package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class UserInfo(
	@Json(name = "going") val going: Boolean,
	@Json(name = "waitlisted") val waitlisted: Boolean,
	@Json(name = "bookmarked") val bookmarked: Boolean,
	@Json(name = "eventId") val eventId: String
	@Json(name = "guests") val guests: Array<Guests>?,
	@Json(name = "eventId") val eventId: String?,
	@Json(name = "guestsCount") val guestsCount: Int?
)