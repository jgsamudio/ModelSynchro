package 

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Addresses(
	@Json(name = "country") val country: String,
	@Json(name = "postalCode") val postalCode: String,
	@Json(name = "city") val city: String,
	@Json(name = "address1") val address1: String,
	@Json(name = "state") val state: String,
	@Json(name = "addressId") val addressId: String,
	@Json(name = "address2") val address2: String
	@Json(name = "address2") val address2: String?
)