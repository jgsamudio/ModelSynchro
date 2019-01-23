package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Response(
	@Json(name = "event") val event: Event,
	@Json(name = "event_guests") val event_guests: Array<Event_guests>
	@Json(name = "user_rsvpStatus") val user_rsvpStatus: String,
)