package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Finance

import retrofit2.http.Path
import retrofit2.http.GET
import retrofit2.http.Query

/**
    Auto-Generated using ModelSynchro
*/

interface FinancialApi {
    
    @GET("accounts/{account_id}/financial")
    fun getFinancialTransactions(@Path("account_id") account_id: String,
@Query("dateFrom") dateFrom: String,
@Query("dateTo") dateTo: String): Deferred<ArrayList<Finance>>
    
}