package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class View(
	@Json(name = "subviews") val subviews: Subviews,
	@Json(name = "id") val id: String,
	@Json(name = "constraints") val constraints: Constraints,
	@Json(name = "rect") val rect: Rect,
	@Json(name = "contentMode") val contentMode: String,
	@Json(name = "autoresizingMask") val autoresizingMask: AutoresizingMask,
	@Json(name = "viewLayoutGuide") val viewLayoutGuide: ViewLayoutGuide,
	@Json(name = "color") val color: Color
)