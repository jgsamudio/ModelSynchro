package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Account

import retrofit2.http.Path
import retrofit2.http.GET

/**
    Auto-Generated using ModelSynchro
*/

interface AccountApi {
    
    @GET("accounts")
    fun getAccounts(): Deferred<Array<Account>>
    
    @GET("accounts/{account_id}")
    fun getAccountById(@Path("account_id") accountId: String): Deferred<Account>
    
}