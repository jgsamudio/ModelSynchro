package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.UpdatePaymentMethodRequest
import com.kapsch.android.api.models.PaymentMethod

import retrofit2.http.PATCH
import retrofit2.http.Path
import retrofit2.http.Body
import retrofit2.http.GET

/**
    Auto-Generated using ModelSynchro
*/

interface payment {
    
    @PATCH("/accounts/{account_id}/payments/{payment_id}")
    fun updatePaymentMethod(@Path("account_id") accountId: String,
			@Path("payment_id") paymentId: String@Body updatePaymentMethodRequest: UpdatePaymentMethodRequest): Deferred<Array<PaymentMethod>>
    
    @GET("/accounts/{account_id}/payments/{payment_id}")
    fun getPaymentMethod(@Path("account_id") accountId: String,
			@Path("payment_id") paymentId: String): Deferred<Array<PaymentMethod>>
    
}