package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.User
import com.kapsch.android.api.models.AppConfiguration
import com.kapsch.android.api.models.AuthenticationRefreshTokenRequest
import com.kapsch.android.api.models.AuthenticationTokens
import com.kapsch.android.api.models.UserUpdateRequest

import retrofit2.http.Path
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.PATCH
import retrofit2.http.Body
import retrofit2.http.Query

/**
    Auto-Generated using ModelSynchro
*/

interface UserApi {
    
    @PATCH("/users/{user_id}")
    fun updateUserInfo(@Path("user_id") userId: String,
			@Body userUpdateRequest: UserUpdateRequest): Deferred<User>
    
    @GET("/users/{user_id}")
    fun getUserInfo(@Path("user_id") userId: String): Deferred<User>
    
    @GET("/users/availability")
    fun getAvailability(@Query("postalCode") postalCode: String): Deferred<Unit>
    
    @GET("/users/configurations")
    fun getAppConfiguration(): Deferred<AppConfiguration>
    
    @POST("/users/token")
    fun refreshToken(@Body authenticationRefreshTokenRequest: AuthenticationRefreshTokenRequest): Deferred<AuthenticationToken>
    
}