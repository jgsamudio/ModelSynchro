package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.AuthenticationInformation
import com.kapsch.android.api.models.ProviderAuthenticationInformation
import com.kapsch.android.api.models.AuthenticationTokens

import retrofit2.http.Body
import retrofit2.http.POST

/**
    Auto-Generated using ModelSynchro
*/

interface AuthenticationApi {
    
    @POST("/users/login")
    fun loginUser(@Body authenticationInformation: AuthenticationInformation): Deferred<AuthenticationToken>
    
    @POST("/users/register")
    fun createUser(@Body authenticationInformation: AuthenticationInformation): Deferred<AuthenticationToken>
    
    @POST("/users/provider_login")
    fun loginUserWithAuth(@Body providerAuthenticationInformation: ProviderAuthenticationInformation): Deferred<AuthenticationToken>
    
}