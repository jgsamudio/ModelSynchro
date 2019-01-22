package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Label(
	@Json(name = "baselineAdjustment") val baselineAdjustment: String,
	@Json(name = "textAlignment") val textAlignment: String,
	@Json(name = "adjustsFontSizeToFit") val adjustsFontSizeToFit: String,
	@Json(name = "lineBreakMode") val lineBreakMode: String,
	@Json(name = "nil") val nil: Nil,
	@Json(name = "userInteractionEnabled") val userInteractionEnabled: String,
	@Json(name = "translatesAutoresizingMaskIntoConstraints") val translatesAutoresizingMaskIntoConstraints: String,
	@Json(name = "rect") val rect: Rect,
	@Json(name = "opaque") val opaque: String,
	@Json(name = "fontDescription") val fontDescription: FontDescription,
	@Json(name = "color") val color: Color,
	@Json(name = "horizontalHuggingPriority") val horizontalHuggingPriority: String,
	@Json(name = "contentMode") val contentMode: String,
	@Json(name = "id") val id: String,
	@Json(name = "text") val text: String,
	@Json(name = "verticalHuggingPriority") val verticalHuggingPriority: String
)