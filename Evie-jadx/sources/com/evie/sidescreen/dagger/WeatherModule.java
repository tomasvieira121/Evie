package com.evie.sidescreen.dagger;

import com.evie.models.weather.WeatherAPI;
import com.evie.models.weather.WeatherModel;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public class WeatherModule {
    public WeatherModel providesWeatherModel(Retrofit retrofit) {
        return new WeatherModel((WeatherAPI) retrofit.newBuilder().build().create(WeatherAPI.class));
    }
}
