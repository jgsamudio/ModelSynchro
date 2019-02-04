package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.UpdateVehicleRequest
import com.kapsch.android.api.models.Vehicle
import com.kapsch.android.api.models.Model
import com.kapsch.android.api.models.AddVehicleRequest
import com.kapsch.android.api.models.SearchVehicleRequest
import com.kapsch.android.api.models.Make
import com.kapsch.android.api.models.Color

import retrofit2.http.PATCH
import retrofit2.http.POST
import retrofit2.http.Body
import retrofit2.http.DELETE
import retrofit2.http.GET
import retrofit2.http.Query
import retrofit2.http.Path

/**
    Auto-Generated using ModelSynchro
*/

interface VehicleApi {
    
    @GET("accounts/{account_id}/vehicles")
    fun getVehicles(@Path("account_id") account_id: String): Deferred<ArrayList<Vehicle>>
    
    @POST("accounts/{account_id}/vehicles")
    fun addVehicle(@Path("account_id") account_id: String,
@Body addVehicleRequest: AddVehicleRequest): Deferred<ArrayList<Vehicle>>
    
    @GET("accounts/{account_id}/vehicles/{vehicle_id}")
    fun getVehicleById(@Path("account_id") account_id: String,
@Path("vehicle_id") vehicle_id: String): Deferred<Vehicle>
    
    @PATCH("accounts/{account_id}/vehicles/{vehicle_id}")
    fun updateVehicleById(@Path("account_id") account_id: String,
@Path("vehicle_id") vehicle_id: String,
@Body updateVehicleRequest: UpdateVehicleRequest): Deferred<Vehicle>
    
    @DELETE("accounts/{account_id}/vehicles/{vehicle_id}")
    fun deleteVehicleById(@Path("account_id") account_id: String,
@Path("vehicle_id") vehicle_id: String): Deferred<Vehicle>
    
    @GET("vehicles/makes")
    fun getVehicleMakes(@Query("makeId") makeId: String): Deferred<ArrayList<Make>>
    
    @GET("vehicles/models")
    fun getVehicleModels(): Deferred<ArrayList<Model>>
    
    @GET("vehicles/colors")
    fun getVehicleColors(): Deferred<ArrayList<Color>>
    
    @POST("vehicles/search")
    fun searchForVehicle(@Body searchVehicleRequest: SearchVehicleRequest): Deferred<Vehicle>
    
}