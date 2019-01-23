package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class AttendeesInfo(
	@Json(name = "attendeesCount") val attendeesCount: Int,
	@Json(name = "attendees") val attendees: Array<Attendees>
)