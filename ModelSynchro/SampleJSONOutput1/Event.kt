package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Event(
	@Json(name = "_id") val _id: String,
	@Json(name = "attendees") val attendees: Array<Attendees>
	@Json(name = "cancelled") val cancelled: Boolean,
	@Json(name = "capacity") val capacity: Int,
	@Json(name = "createdAt") val createdAt: String,
	@Json(name = "description") val description: String,
	@Json(name = "guest_capacity") val guest_capacity: Int,
	@Json(name = "guest_per_member") val guest_per_member: Int,
	@Json(name = "guests") val guests: Array<Guests>,
	@Json(name = "happening_photo") val happening_photo: String,
	@Json(name = "lastUpdated") val lastUpdated: String,
	@Json(name = "location") val location: String,
	@Json(name = "locationClean") val locationClean: String,
	@Json(name = "public") val public: Boolean,
	@Json(name = "reminderEmail") val reminderEmail: Boolean,
	@Json(name = "rsvpStatus") val rsvpStatus: String,
	@Json(name = "start_date") val start_date: String,
	@Json(name = "title") val title: String,
	@Json(name = "type") val type: String,
	@Json(name = "waitlisted") val waitlisted: Array<Waitlisted>,
	@Json(name = "waitlistedStatus") val waitlistedStatus: String,
)