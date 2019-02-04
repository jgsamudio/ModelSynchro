package com.kapsch.android.api.service

import kotlinx.coroutines.Deferred

import com.kapsch.android.api.models.NotificationCenter

import retrofit2.http.GET
import retrofit2.http.Query

/**
    Auto-Generated using ModelSynchro
*/

interface NotificationApi {
    
    @GET("users/notifications")
    fun getUserNotifications(@Query("filter") filter: String,
@Query("offset") offset: Boolean,
@Query("sort") sort: String,
@Query("limit") limit: Boolean): Deferred<NotificationCenter>
    
}