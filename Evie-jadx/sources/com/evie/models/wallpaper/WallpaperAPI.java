package com.evie.models.wallpaper;

import io.reactivex.Observable;
import retrofit2.Response;
import retrofit2.http.GET;

/* JADX INFO: loaded from: classes.dex */
public interface WallpaperAPI {
    @GET("/android/wallpaper")
    Observable<Response<WallpaperData>> getWallpapers();
}
