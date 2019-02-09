package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Transaction
import com.kapsch.android.api.models.UpdateTransactionRequest

import retrofit2.http.GET
import retrofit2.http.Path
import retrofit2.http.PATCH
import retrofit2.http.POST
import retrofit2.http.Body

/**
    Auto-Generated using ModelSynchro
*/

interface TransactionApi {
    
    @POST("/accounts/{account_id}/transactions/{transaction_id}/dispute")
    fun disputeTransaction(@Path("account_id") accountId: String,
			@Path("transaction_id") transactionId: String): Deferred<Transaction>
    
    @PATCH("/accounts/{account_id}/transactions/{transaction_id}")
    fun updateTransaction(@Path("account_id") accountId: String,
			@Path("transaction_id") transactionId: String,
			@Body updateTransactionRequest: UpdateTransactionRequest): Deferred<Transaction>
    
    @GET("/accounts/{account_id}/transactions/{transaction_id}")
    fun getTransaction(@Path("account_id") accountId: String,
			@Path("transaction_id") transactionId: String): Deferred<Transaction>
    
}