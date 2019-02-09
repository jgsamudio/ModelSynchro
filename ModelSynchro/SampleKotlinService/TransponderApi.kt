package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Transponder

import retrofit2.http.Path
import retrofit2.http.GET

/**
    Auto-Generated using ModelSynchro
*/

interface TransponderApi {
    
    @GET("/accounts/{account_id}/transponders/{transponder_id}")
    fun getTransponderInfo(@Path("account_id") accountId: String,
			@Path("transponder_id") transponderId: String): Deferred<Transponder>
    
}