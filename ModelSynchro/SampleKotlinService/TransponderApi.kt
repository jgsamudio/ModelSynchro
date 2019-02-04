package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Transponder
import com.kapsch.android.api.models.AddTransponderRequest

import retrofit2.http.POST
import retrofit2.http.DELETE
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.Path

/**
    Auto-Generated using ModelSynchro
*/

interface TransponderApi {
    
    @GET("accounts/{account_id}/transponders")
    fun getTransponders(@Path("account_id") account_id: String): Deferred<ArrayList<Transponder>>
    
    @POST("accounts/{account_id}/transponders")
    fun addTransponder(@Path("account_id") account_id: String,
@Body addTransponderRequest: AddTransponderRequest): Deferred<ArrayList<Transponder>>
    
    @GET("accounts/{account_id}/transponders/{transponder_id}")
    fun getTransponder(@Path("account_id") account_id: String,
@Path("transponder_id") transponder_id: String): Deferred<Transponder>
    
    @DELETE("accounts/{account_id}/transponders/{transponder_id}")
    fun deleteTransponder(@Path("account_id") account_id: String,
@Path("transponder_id") transponder_id: String): Deferred<Transponder>
    
}