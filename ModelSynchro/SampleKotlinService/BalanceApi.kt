package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.AddFundsToBalanceRequest
import com.kapsch.android.api.models.Balance

import retrofit2.http.Path
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Body

/**
    Auto-Generated using ModelSynchro
*/

interface BalanceApi {
    
    @POST("/accounts/{account_id}/balance")
    fun addFundsToBalance(@Path("account_id") accountId: String,
			@Body addFundsToBalanceRequest: AddFundsToBalanceRequest): Deferred<Balance>
    
    @GET("/accounts/{account_id}/balance")
    fun getBalance(@Path("account_id") accountId: String): Deferred<Balance>
    
}