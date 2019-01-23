package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class View(
	@Json(name = "contentMode") val contentMode: String,
	@Json(name = "rect") val rect: Rect,
	@Json(name = "subviews") val subviews: Subviews,
	@Json(name = "viewLayoutGuide") val viewLayoutGuide: ViewLayoutGuide,
	@Json(name = "constraints") val constraints: Constraints,
	@Json(name = "autoresizingMask") val autoresizingMask: AutoresizingMask,
	@Json(name = "color") val color: Color,
	@Json(name = "id") val id: String
)