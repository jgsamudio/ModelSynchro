package com.kapsch.android.signup

/*
Auto-Generated using ModelSynchro
*/

data class Event(
	val _id: String,
	val attendees: [Attendees],
	val cancelled: Boolean,
	val capacity: Int,
	val createdAt: String,
	val description: String,
	val guest_capacity: Int,
	val guest_per_member: Int,
	val guests: [Guests],
	val happening_photo: String,
	val lastUpdated: String,
	val location: String,
	val locationClean: String,
	val public: Boolean,
	val reminderEmail: Boolean,
	val rsvpStatus: String,
	val start_date: String,
	val title: String,
	val type: String,
	val waitlisted: [Waitlisted],
	val waitlistedStatus: String,

)