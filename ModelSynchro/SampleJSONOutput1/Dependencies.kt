package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Dependencies(
	@Json(name = "plugIn") val plugIn: PlugIn,
	@Json(name = "capability") val capability: Capability,
	@Json(name = "deployment") val deployment: Deployment
)