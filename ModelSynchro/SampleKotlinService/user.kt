package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.AppConfiguration
import com.kapsch.android.api.models.AuthenticationTokens
import com.kapsch.android.api.models.inline_response_200
import com.kapsch.android.api.models.AuthenticationRefreshTokenRequest
import com.kapsch.android.api.models.UserUpdateRequest
import com.kapsch.android.api.models.User

import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Body
import retrofit2.http.Path
import retrofit2.http.PATCH
import retrofit2.http.Query

/**
    Auto-Generated using ModelSynchro
*/

interface user {
    
    @GET("/users/configurations")
    fun getAppConfiguration(): Deferred<AppConfiguration>
    
    @POST("/users/token")
    fun refreshToken(@Body authenticationRefreshTokenRequest: AuthenticationRefreshTokenRequest): Deferred<AuthenticationToken>
    
    @GET("/users/availability")
    fun getAvailability(@Query("postalCode") postalCode: String): Deferred<InlineResponse200>
    
}