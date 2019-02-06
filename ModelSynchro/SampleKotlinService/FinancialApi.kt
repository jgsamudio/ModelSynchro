package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Finance

import retrofit2.http.Query
import retrofit2.http.Path
import retrofit2.http.GET

/**
    Auto-Generated using ModelSynchro
*/

interface FinancialApi {
    
    @GET("accounts/{account_id}/financial")
    fun getFinancialTransactions(@Path("account_id") accountId: String,
			@Query("dateFrom") dateFrom: String,
			@Query("dateTo") dateTo: String): Deferred<Array<Finance>>
    
}