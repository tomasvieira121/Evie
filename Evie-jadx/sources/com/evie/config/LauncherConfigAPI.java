package com.evie.config;

import io.reactivex.Observable;
import retrofit2.Response;
import retrofit2.http.GET;

/* JADX INFO: loaded from: classes.dex */
public interface LauncherConfigAPI {
    @GET("/config/launcher")
    Observable<Response<LauncherConfigData>> getLauncherConfig();
}
