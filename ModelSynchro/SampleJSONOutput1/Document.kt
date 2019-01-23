package com.kapsch.android.base

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Document(
	@Json(name = "toolsVersion") val toolsVersion: String,
	@Json(name = "device") val device: Device,
	@Json(name = "useAutolayout") val useAutolayout: String,
	@Json(name = "useSafeAreas") val useSafeAreas: String,
	@Json(name = "useTraitCollections") val useTraitCollections: String,
	@Json(name = "colorMatched") val colorMatched: String,
	@Json(name = "type") val type: String,
	@Json(name = "targetRuntime") val targetRuntime: String,
	@Json(name = "propertyAccessControl") val propertyAccessControl: String,
	@Json(name = "dependencies") val dependencies: Dependencies,
	@Json(name = "version") val version: String,
	@Json(name = "objects") val objects: Objects
)