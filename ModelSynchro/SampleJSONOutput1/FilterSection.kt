package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class FilterSection(
	@Json(name = "section") val section: String,
	@Json(name = "filters") val filters: Array<Filters>
)