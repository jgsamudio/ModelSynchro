package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Statement

import retrofit2.http.Path
import retrofit2.http.GET
import retrofit2.http.Query

/**
    Auto-Generated using ModelSynchro
*/

interface StatementsApi {
    
    @GET("accounts/{account_id}/statements")
    fun getStatements(@Path("account_id") account_id: String,
@Query("dateFrom") dateFrom: String,
@Query("dateTo") dateTo: String): Deferred<ArrayList<Statement>>
    
}