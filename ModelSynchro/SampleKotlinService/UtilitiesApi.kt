package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.State

import retrofit2.http.Query
import retrofit2.http.GET

/**
    Auto-Generated using ModelSynchro
*/

interface UtilitiesApi {
    
    @GET("utilities/states")
    fun getStates(@Query("country") country: String): Deferred<State>
    
}