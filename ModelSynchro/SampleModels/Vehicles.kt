package 

import com.squareup.moshi.Json

/*
    Auto-Generated using ModelSynchro
*/

data class Vehicles(
	@Json(name = "model") val model: String,
	@Json(name = "year") val year: String,
	@Json(name = "transponderId") val transponderId: String,
	@Json(name = "vehicleId") val vehicleId: String,
	@Json(name = "licensePlate") val licensePlate: String,
	@Json(name = "country") val country: String,
	@Json(name = "licensePlateNumberType") val licensePlateNumberType: String,
	@Json(name = "nickName") val nickName: String,
	@Json(name = "state") val state: String,
	@Json(name = "color") val color: String,
	@Json(name = "licensePlateExpirationDate") val licensePlateExpirationDate: String,
	@Json(name = "make") val make: String,
	@Json(name = "bluetoothId") val bluetoothId: String,
	@Json(name = "vehicleClass") val vehicleClass: String,
	@Json(name = "isWindshieldMetalized") val isWindshieldMetalized: Boolean,
	@Json(name = "isLicensePlateTemporary") val isLicensePlateTemporary: Boolean
	@Json(name = "isLicensePlateTemporary") val isLicensePlateTemporary: Boolean?
)