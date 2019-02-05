package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Account

import retrofit2.http.GET
import retrofit2.http.Path

/**
    Auto-Generated using ModelSynchro
*/

interface AccountApi {
    
    @GET("accounts")
    fun getAccounts(): Deferred<Account>
    
    @GET("accounts/{account_id}")
    fun getAccountById(@Path("account_id") account_id: String): Deferred<Account>
    
}