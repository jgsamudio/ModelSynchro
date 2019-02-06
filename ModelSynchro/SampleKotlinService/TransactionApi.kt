package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.UpdateTransactionRequest
import com.kapsch.android.api.models.Transaction

import retrofit2.http.Body
import retrofit2.http.Path
import retrofit2.http.GET
import retrofit2.http.DELETE
import retrofit2.http.POST
import retrofit2.http.PATCH
import retrofit2.http.Query

/**
    Auto-Generated using ModelSynchro
*/

interface TransactionApi {
    
    @GET("accounts/{account_id}/transactions")
    fun getUserTransactions(@Path("account_id") accountId: String,
			@Query("dateFrom") dateFrom: String,
			@Query("dateTo") dateTo: String,
			@Query("limit") limit: Boolean,
			@Query("offset") offset: Boolean,
			@Query("sort") sort: String): Deferred<Array<Transaction>>
    
    @GET("accounts/{account_id}/transactions/{transaction_id}")
    fun getUserTransactionById(@Path("account_id") accountId: String,
			@Path("transaction_id") transactionId: String): Deferred<Transaction>
    
    @PATCH("accounts/{account_id}/transactions/{transaction_id}")
    fun updateUserTransactionById(@Path("account_id") accountId: String,
			@Path("transaction_id") transactionId: String,
			@Body updateTransactionRequest: UpdateTransactionRequest): Deferred<Transaction>
    
    @DELETE("accounts/{account_id}/transactions/{transaction_id}")
    fun deleteUserTransactionById(@Path("account_id") accountId: String,
			@Path("transaction_id") transactionId: String): Deferred<Transaction>
    
    @POST("accounts/{account_id}/transactions/{transaction_id}/dispute")
    fun disputeTransactionById(@Path("account_id") accountId: String,
			@Path("transaction_id") transactionId: String): Deferred<Transaction>
    
}