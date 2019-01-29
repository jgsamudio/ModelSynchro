package com.kapsch.android.api.service

import com.kapsch.android.api.models.Balance
import com.kapsch.android.api.models.PaymentScheme
import com.kapsch.android.api.models.UpdatePaymentSchemeRequest
import kotlinx.coroutines.Deferred
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Path

interface BalanceApi {

  /**
   * Get all the user's balance
   * @return Balance
   * @param user_id Path
   */
  @GET("/Kapsch_TrafficCom/CBO_Proposal/1.0.0/users/{user_id}/balance/")
  fun getBalance(@Path("user_id") user_id: String): Deferred<Balance>

  /**
   * Get the list of available payment schemes for this user
   * @return List of PaymentScheme
   * @param user_id Path
   * @param payment_scheme_id Path
   */
  @GET("/Kapsch_TrafficCom/CBO_Proposal/1.0.0/users/{user_id}/balance/payment_schemes/")
  fun getBalancePaymentSchemes(@Path("user_id") user_id: String): Deferred<List<PaymentScheme>>

  /**
   * Update the user's payment scheme
   * @return List of PaymentScheme
   * @param user_id Path
   * @param payment_scheme_id Path
   * @param updatePaymentSchemeRequest Body
   */
  @POST("/Kapsch_TrafficCom/CBO_Proposal/1.0.0/users/{user_id}/balance/payment_schemes/{payment_scheme_id}")
  fun postBalancePaymentSchemeById(@Path("user_id") user_id: String,
                                   @Path("payment_scheme_id") payment_scheme_id: String,
                                   @Body updatePaymentSchemeRequest: UpdatePaymentSchemeRequest): Deferred<List<PaymentScheme>>
}