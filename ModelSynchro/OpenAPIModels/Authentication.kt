package 

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Authentication(
	@Json(name = "phone") val phone: String,
	@Json(name = "paymentMethods") val paymentMethods: Array<PaymentMethods>,
	@Json(name = "firstName") val firstName: String,
	@Json(name = "email") val email: String,
	@Json(name = "addresses") val addresses: Array<Addresses>,
	@Json(name = "transponders") val transponders: Array<Transponders>,
	@Json(name = "userId") val userId: String,
	@Json(name = "vehicles") val vehicles: Array<Vehicles>,
	@Json(name = "lastName") val lastName: String
)