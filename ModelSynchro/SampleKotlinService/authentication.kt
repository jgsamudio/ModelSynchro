package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.AuthenticationTokens
import com.kapsch.android.api.models.AuthenticationInformation
import com.kapsch.android.api.models.ProviderAuthenticationInformation

import retrofit2.http.POST
import retrofit2.http.Body

/**
    Auto-Generated using ModelSynchro
*/

interface authentication {
    
    @POST("/users/login")
    fun loginUser(@Body authenticationInformation: AuthenticationInformation): Deferred<AuthenticationToken>
    
    @POST("/users/provider_login")
    fun loginUserWithAuth(@Body providerAuthenticationInformation: ProviderAuthenticationInformation): Deferred<AuthenticationToken>
    
    @POST("/users/register")
    fun createUser(@Body authenticationInformation: AuthenticationInformation): Deferred<AuthenticationToken>
    
}