package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.UpdateVehicleRequest
import com.kapsch.android.api.models.Vehicle
import com.kapsch.android.api.models.SearchVehicleRequest

import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Body
import retrofit2.http.Path
import retrofit2.http.PATCH

/**
    Auto-Generated using ModelSynchro
*/

interface vehicle {
    
    @GET("/accounts/{account_id}/vehicles/{vehicle_id}")
    fun getVehicleInfo(@Path("account_id") accountId: String,
			@Path("vehicle_id") vehicleId: String): Deferred<Array<Vehicle>>
    
    @PATCH("/accounts/{account_id}/vehicles/{vehicle_id}")
    fun updateVehicleInfo(@Path("account_id") accountId: String,
			@Path("vehicle_id") vehicleId: String@Body updateVehicleRequest: UpdateVehicleRequest): Deferred<Array<Vehicle>>
    
    @POST("/vehicles/search")
    fun getVehicleForPlate(@Body searchVehicleRequest: SearchVehicleRequest): Deferred<Vehicle>
    
}