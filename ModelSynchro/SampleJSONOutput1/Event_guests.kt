package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Event_guests(
	@Json(name = "__v") val __v: Boolean,
	@Json(name = "first_name") val first_name: String,
	@Json(name = "last_name") val last_name: String,
	@Json(name = "_id") val _id: String,
	@Json(name = "eventId") val eventId: String,
	@Json(name = "rsvpStatus") val rsvpStatus: String,
	@Json(name = "memberId") val memberId: String,
	@Json(name = "email") val email: String,
	@Json(name = "lastUpdated") val lastUpdated: String,
	@Json(name = "checkIn") val checkIn: Boolean
	@Json(name = "checkIn") val checkIn: Boolean?
	@Json(name = "checkIn") val checkIn: Boolean?
)