package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.AddPaymentMethodRequest
import com.kapsch.android.api.models.UpdatePaymentMethodRequest
import com.kapsch.android.api.models.PaymentMethod

import retrofit2.http.Path
import retrofit2.http.POST
import retrofit2.http.GET
import retrofit2.http.DELETE
import retrofit2.http.Body
import retrofit2.http.PATCH

/**
    Auto-Generated using ModelSynchro
*/

interface PaymentApi {
    
    @GET("accounts/{account_id}/payments")
    fun getPayments(@Path("account_id") accountId: String): Deferred<Array<PaymentMethod>>
    
    @POST("accounts/{account_id}/payments")
    fun addPaymentMethod(@Path("account_id") accountId: String,
			@Body addPaymentMethodRequest: AddPaymentMethodRequest): Deferred<Array<PaymentMethod>>
    
    @GET("accounts/{account_id}/payments/{payment_id}")
    fun getPaymentMethod(@Path("account_id") accountId: String,
			@Path("payment_id") paymentId: String): Deferred<PaymentMethod>
    
    @PATCH("accounts/{account_id}/payments/{payment_id}")
    fun updatePaymentMethod(@Path("account_id") accountId: String,
			@Path("payment_id") paymentId: String,
			@Body updatePaymentMethodRequest: UpdatePaymentMethodRequest): Deferred<PaymentMethod>
    
    @DELETE("accounts/{account_id}/payments/{payment_id}")
    fun deletePaymentMethod(@Path("account_id") accountId: String,
			@Path("payment_id") paymentId: String): Deferred<PaymentMethod>
    
}