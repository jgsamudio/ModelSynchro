package com.sample.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class AttendeesInfo(
    @Json(name = "attendees") val attendees: Array<Attendees>,
    @Json(name = "attendeesCount") val attendeesCount: Int
)