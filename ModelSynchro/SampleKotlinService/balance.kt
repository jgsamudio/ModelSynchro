package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Balance
import com.kapsch.android.api.models.AddFundsToBalanceRequest

import retrofit2.http.POST
import retrofit2.http.Path
import retrofit2.http.Body
import retrofit2.http.GET

/**
    Auto-Generated using ModelSynchro
*/

interface balance {
    
    @POST("/accounts/{account_id}/balance")
    fun addFundsToBalance(@Path("account_id") accountId: String,
			@Body addFundsToBalanceRequest: AddFundsToBalanceRequest): Deferred<Balance>
    
    @GET("/accounts/{account_id}/balance")
    fun getBalance(@Path("account_id") accountId: String): Deferred<Balance>
    
}