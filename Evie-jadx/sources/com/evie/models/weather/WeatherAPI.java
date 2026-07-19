package com.evie.models.weather;

import io.reactivex.Observable;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes.dex */
public interface WeatherAPI {
    @GET("/android/weather")
    Observable<Response<WeatherData>> getWeather(@Query("lat") double d, @Query("lon") double d2);
}
