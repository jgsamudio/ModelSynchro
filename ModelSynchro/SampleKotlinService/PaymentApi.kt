package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.PaymentMethod
import com.kapsch.android.api.models.UpdatePaymentMethodRequest
import com.kapsch.android.api.models.AddPaymentMethodRequest

import retrofit2.http.DELETE
import retrofit2.http.Path
import retrofit2.http.PATCH
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Body

/**
    Auto-Generated using ModelSynchro
*/

interface PaymentApi {
    
    @GET("accounts/{account_id}/payments")
    fun getPayments(@Path("account_id") account_id: String): Deferred<ArrayList<PaymentMethod>>
    
    @POST("accounts/{account_id}/payments")
    fun addPaymentMethod(@Path("account_id") account_id: String,
@Body addPaymentMethodRequest: AddPaymentMethodRequest): Deferred<ArrayList<PaymentMethod>>
    
    @GET("accounts/{account_id}/payments/{payment_id}")
    fun getPaymentMethod(@Path("payment_id") payment_id: String,
@Path("account_id") account_id: String): Deferred<PaymentMethod>
    
    @PATCH("accounts/{account_id}/payments/{payment_id}")
    fun updatePaymentMethod(@Path("payment_id") payment_id: String,
@Path("account_id") account_id: String,
@Body updatePaymentMethodRequest: UpdatePaymentMethodRequest): Deferred<PaymentMethod>
    
    @DELETE("accounts/{account_id}/payments/{payment_id}")
    fun deletePaymentMethod(@Path("payment_id") payment_id: String,
@Path("account_id") account_id: String): Deferred<PaymentMethod>
    
}