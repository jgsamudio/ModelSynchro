package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Transponder
import com.kapsch.android.api.models.AddTransponderRequest

import retrofit2.http.Path
import retrofit2.http.POST
import retrofit2.http.GET
import retrofit2.http.DELETE
import retrofit2.http.Body

/**
    Auto-Generated using ModelSynchro
*/

interface TransponderApi {
    
    @GET("accounts/{account_id}/transponders")
    fun getTransponders(@Path("account_id") accountId: String): Deferred<Array<Transponder>>
    
    @POST("accounts/{account_id}/transponders")
    fun addTransponder(@Path("account_id") accountId: String,
			@Body addTransponderRequest: AddTransponderRequest): Deferred<Array<Transponder>>
    
    @GET("accounts/{account_id}/transponders/{transponder_id}")
    fun getTransponder(@Path("account_id") accountId: String,
			@Path("transponder_id") transponderId: String): Deferred<Transponder>
    
    @DELETE("accounts/{account_id}/transponders/{transponder_id}")
    fun deleteTransponder(@Path("account_id") accountId: String,
			@Path("transponder_id") transponderId: String): Deferred<Transponder>
    
}