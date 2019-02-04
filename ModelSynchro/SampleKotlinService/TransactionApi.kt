package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Transaction
import com.kapsch.android.api.models.UpdateTransactionRequest

import retrofit2.http.DELETE
import retrofit2.http.Body
import retrofit2.http.PATCH
import retrofit2.http.Path
import retrofit2.http.GET
import retrofit2.http.Query
import retrofit2.http.POST

/**
    Auto-Generated using ModelSynchro
*/

interface TransactionApi {
    
    @GET("accounts/{account_id}/transactions")
    fun getUserTransactions(@Path("account_id") account_id: String,
@Query("dateTo") dateTo: String,
@Query("offset") offset: Boolean,
@Query("sort") sort: String,
@Query("limit") limit: Boolean,
@Query("dateFrom") dateFrom: String): Deferred<ArrayList<Transaction>>
    
    @GET("accounts/{account_id}/transactions/{transaction_id}")
    fun getUserTransactionById(@Path("transaction_id") transaction_id: String,
@Path("account_id") account_id: String): Deferred<Transaction>
    
    @PATCH("accounts/{account_id}/transactions/{transaction_id}")
    fun updateUserTransactionById(@Path("transaction_id") transaction_id: String,
@Path("account_id") account_id: String,
@Body updateTransactionRequest: UpdateTransactionRequest): Deferred<Transaction>
    
    @DELETE("accounts/{account_id}/transactions/{transaction_id}")
    fun deleteUserTransactionById(@Path("transaction_id") transaction_id: String,
@Path("account_id") account_id: String): Deferred<Transaction>
    
    @POST("accounts/{account_id}/transactions/{transaction_id}/dispute")
    fun disputeTransactionById(@Path("transaction_id") transaction_id: String,
@Path("account_id") account_id: String): Deferred<Transaction>
    
}