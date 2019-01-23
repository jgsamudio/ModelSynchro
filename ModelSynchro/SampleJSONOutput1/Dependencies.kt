package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Dependencies(
	@Json(name = "capability") val capability: Capability,
	@Json(name = "plugIn") val plugIn: PlugIn,
	@Json(name = "deployment") val deployment: Deployment
)