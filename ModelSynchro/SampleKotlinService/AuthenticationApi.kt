package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.AuthenticationToken
import com.kapsch.android.api.models.AuthenticationInformation

import retrofit2.http.POST
import retrofit2.http.Body

/**
    Auto-Generated using ModelSynchro
*/

interface AuthenticationApi {
    
    @POST("users/register")
    fun createUser(@Body authenticationInformation: AuthenticationInformation): Deferred<AuthenticationToken>
    
    @POST("users/login")
    fun loginUser(@Body authenticationInformation: AuthenticationInformation): Deferred<AuthenticationToken>
    
}