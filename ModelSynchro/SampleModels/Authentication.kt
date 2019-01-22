package 

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Authentication(
	@Json(name = "vehicles") val vehicles: Array<Vehicles>,
	@Json(name = "paymentMethods") val paymentMethods: Array<PaymentMethods>,
	@Json(name = "addresses") val addresses: Array<Addresses>,
	@Json(name = "lastName") val lastName: String,
	@Json(name = "transponders") val transponders: Array<Transponders>,
	@Json(name = "firstName") val firstName: String,
	@Json(name = "userId") val userId: String,
	@Json(name = "email") val email: String,
	@Json(name = "phone") val phone: String
)