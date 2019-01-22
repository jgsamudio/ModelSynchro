package 

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class PaymentMethods(
	@Json(name = "type") val type: String,
	@Json(name = "paymentMethodId") val paymentMethodId: String,
	@Json(name = "paymentObject") val paymentObject: PaymentObject,
	@Json(name = "isPrimary") val isPrimary: Boolean
	@Json(name = "isPrimary") val isPrimary: Boolean?
)