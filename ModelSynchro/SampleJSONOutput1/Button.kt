package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Button(
	@Json(name = "buttonType") val buttonType: String,
	@Json(name = "rect") val rect: Rect,
	@Json(name = "opaque") val opaque: String,
	@Json(name = "id") val id: String,
	@Json(name = "lineBreakMode") val lineBreakMode: String,
	@Json(name = "contentVerticalAlignment") val contentVerticalAlignment: String,
	@Json(name = "contentMode") val contentMode: String,
	@Json(name = "state") val state: State,
	@Json(name = "contentHorizontalAlignment") val contentHorizontalAlignment: String,
	@Json(name = "translatesAutoresizingMaskIntoConstraints") val translatesAutoresizingMaskIntoConstraints: String
)