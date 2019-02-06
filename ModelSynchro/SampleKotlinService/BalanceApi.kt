package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.AddFundsToBalanceRequest
import com.kapsch.android.api.models.Balance
import com.kapsch.android.api.models.UpdatePaymentSchemeRequest
import com.kapsch.android.api.models.PaymentScheme

import retrofit2.http.Path
import retrofit2.http.POST
import retrofit2.http.GET
import retrofit2.http.Body

/**
    Auto-Generated using ModelSynchro
*/

interface BalanceApi {
    
    @GET("accounts/{account_id}/balance")
    fun getUserBalance(@Path("account_id") accountId: String): Deferred<Balance>
    
    @GET("accounts/{account_id}/balance")
    fun addBalance(@Path("account_id") accountId: String,
			@Body addFundsToBalanceRequest: AddFundsToBalanceRequest): Deferred<Balance>
    
    @GET("accounts/{account_id}/balance/payment_schemes")
    fun getAvailablePaymentSchemes(@Path("account_id") accountId: String): Deferred<Array<PaymentScheme>>
    
    @POST("accounts/{account_id}/balance/payment_schemes/{payment_scheme_id}")
    fun updatePaymentScheme(@Path("account_id") accountId: String,
			@Path("payment_scheme_id") paymentSchemeId: String,
			@Body updatePaymentSchemeRequest: UpdatePaymentSchemeRequest): Deferred<Array<PaymentScheme>>
    
}