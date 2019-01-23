package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Attendees(
	@Json(name = "checked_in") val checked_in: Boolean,
	@Json(name = "updatedAt") val updatedAt: String,
	@Json(name = "userId") val userId: String
	@Json(name = "email") val email: String?
	@Json(name = "friendId") val friendId: String?,
	@Json(name = "guestToken") val guestToken: String?,
	@Json(name = "name") val name: String?,
	@Json(name = "firstName") val firstName: String?,
	@Json(name = "lastName") val lastName: String?
	@Json(name = "avatar") val avatar: String?
	@Json(name = "headline") val headline: String?,
)