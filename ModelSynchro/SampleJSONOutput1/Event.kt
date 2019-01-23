package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Event(
	@Json(name = "attendeesInfo") val attendeesInfo: AttendeesInfo,
	@Json(name = "cancelled") val cancelled: Boolean,
	@Json(name = "capacity") val capacity: Int?,
	@Json(name = "description") val description: String,
	@Json(name = "fee") val fee: Double?,
	@Json(name = "guest_capacity") val guest_capacity: Int,
	@Json(name = "guest_per_member") val guest_per_member: Int,
	@Json(name = "guestsInfo") val guestsInfo: GuestsInfo,
	@Json(name = "happening_photo") val happening_photo: String,
	@Json(name = "location") val location: String,
	@Json(name = "objectID") val objectID: String,
	@Json(name = "public") val public: Boolean?,
	@Json(name = "rsvpStatus") val rsvpStatus: String,
	@Json(name = "start_date") val start_date: Int,
	@Json(name = "title") val title: String,
	@Json(name = "type") val type: String,
	@Json(name = "userInfo") val userInfo: UserInfo
)