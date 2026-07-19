package com.evie.models.weather;

import com.evie.common.data.Lce;
import io.reactivex.Observable;
import io.reactivex.schedulers.Schedulers;

/* JADX INFO: loaded from: classes.dex */
public class WeatherModel {
    private final WeatherAPI mAPI;

    public WeatherModel(WeatherAPI weatherAPI) {
        this.mAPI = weatherAPI;
    }

    public Observable<Lce<WeatherData>> getWeather(double d, double d2) {
        return this.mAPI.getWeather(d, d2).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce());
    }
}
