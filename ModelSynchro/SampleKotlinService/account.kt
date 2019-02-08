package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Account

import retrofit2.http.GET
import retrofit2.http.Path

/**
    Auto-Generated using ModelSynchro
*/

interface account {
    
    @GET("/accounts/{account_id}")
    fun getUserAccountDetails(@Path("account_id") accountId: String): Deferred<Array<Account>>
    
}