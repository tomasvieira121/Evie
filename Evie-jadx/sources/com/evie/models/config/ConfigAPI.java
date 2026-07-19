package com.evie.models.config;

import io.reactivex.Observable;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes.dex */
public interface ConfigAPI {
    @GET("/config/experiment")
    Observable<Response<ExperimentData>> getExperiment(@Query("user_id") String str, @Query("version") int i, @Query("model") String str2, @Query("package_name") String str3, @Query("not_onboarded") Boolean bool);

    @GET("/config/sidescreen")
    Observable<Response<ConfigData>> getSidescreenConfig(@Query("user_id") String str, @Query("version") int i, @Query("model") String str2, @Query("package_name") String str3, @Query("not_onboarded") Boolean bool, @Query("experiment") String str4, @Query("group") String str5, @Query("firebase_token") String str6);
}
