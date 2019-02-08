package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.Transaction
import com.kapsch.android.api.models.UpdateTransactionRequest

import retrofit2.http.POST
import retrofit2.http.PATCH
import retrofit2.http.Path
import retrofit2.http.Body
import retrofit2.http.GET

/**
    Auto-Generated using ModelSynchro
*/

interface transaction {
    
    @PATCH("/accounts/{account_id}/transactions/{transaction_id}")
    fun updateTransaction(@Path("account_id") accountId: String,
			@Path("transaction_id") transactionId: String@Body updateTransactionRequest: UpdateTransactionRequest): Deferred<Array<Transaction>>
    
    @GET("/accounts/{account_id}/transactions/{transaction_id}")
    fun getTransaction(@Path("account_id") accountId: String,
			@Path("transaction_id") transactionId: String): Deferred<Array<Transaction>>
    
    @POST("/accounts/{account_id}/transactions/{transaction_id}/dispute")
    fun disputeTransaction(@Path("account_id") accountId: String,
			@Path("transaction_id") transactionId: String): Deferred<Transaction>
    
}