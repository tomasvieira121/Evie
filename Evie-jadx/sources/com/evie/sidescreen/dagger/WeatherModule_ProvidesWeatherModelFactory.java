package com.evie.sidescreen.dagger;

import com.evie.models.weather.WeatherModel;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public final class WeatherModule_ProvidesWeatherModelFactory implements Factory<WeatherModel> {
    private final WeatherModule module;
    private final Provider<Retrofit> retrofitProvider;

    public WeatherModule_ProvidesWeatherModelFactory(WeatherModule weatherModule, Provider<Retrofit> provider) {
        this.module = weatherModule;
        this.retrofitProvider = provider;
    }

    @Override // javax.inject.Provider
    public WeatherModel get() {
        return proxyProvidesWeatherModel(this.module, this.retrofitProvider.get());
    }

    public static WeatherModule_ProvidesWeatherModelFactory create(WeatherModule weatherModule, Provider<Retrofit> provider) {
        return new WeatherModule_ProvidesWeatherModelFactory(weatherModule, provider);
    }

    public static WeatherModel proxyProvidesWeatherModel(WeatherModule weatherModule, Retrofit retrofit) {
        return (WeatherModel) Preconditions.checkNotNull(weatherModule.providesWeatherModel(retrofit), "Cannot return null from a non-@Nullable @Provides method");
    }
}
