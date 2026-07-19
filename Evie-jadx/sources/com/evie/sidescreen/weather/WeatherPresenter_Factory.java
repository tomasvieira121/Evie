package com.evie.sidescreen.weather;

import com.evie.models.weather.WeatherModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.ConnectivityModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import dagger.internal.Factory;
import io.reactivex.Observable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class WeatherPresenter_Factory implements Factory<WeatherPresenter> {
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsHandler> analyticsHandlerProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<ConnectivityModel> connectivityModelProvider;
    private final Provider<Observable<Boolean>> convertToCelsiusProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<LocationHandler> locationHandlerProvider;
    private final Provider<WeatherModel> weatherModelProvider;

    public WeatherPresenter_Factory(Provider<LocationHandler> provider, Provider<WeatherModel> provider2, Provider<Observable<Boolean>> provider3, Provider<LifecycleCallbacks> provider4, Provider<ConnectivityModel> provider5, Provider<ActivationModel> provider6, Provider<ActivityStarter> provider7, Provider<AnalyticsHandler> provider8, Provider<AnalyticsModel> provider9) {
        this.locationHandlerProvider = provider;
        this.weatherModelProvider = provider2;
        this.convertToCelsiusProvider = provider3;
        this.lifecycleCallbacksProvider = provider4;
        this.connectivityModelProvider = provider5;
        this.activationModelProvider = provider6;
        this.activityStarterProvider = provider7;
        this.analyticsHandlerProvider = provider8;
        this.analyticsModelProvider = provider9;
    }

    @Override // javax.inject.Provider
    public WeatherPresenter get() {
        return new WeatherPresenter(this.locationHandlerProvider.get(), this.weatherModelProvider.get(), this.convertToCelsiusProvider.get(), this.lifecycleCallbacksProvider.get(), this.connectivityModelProvider.get(), this.activationModelProvider.get(), this.activityStarterProvider.get(), this.analyticsHandlerProvider.get(), this.analyticsModelProvider.get());
    }

    public static WeatherPresenter_Factory create(Provider<LocationHandler> provider, Provider<WeatherModel> provider2, Provider<Observable<Boolean>> provider3, Provider<LifecycleCallbacks> provider4, Provider<ConnectivityModel> provider5, Provider<ActivationModel> provider6, Provider<ActivityStarter> provider7, Provider<AnalyticsHandler> provider8, Provider<AnalyticsModel> provider9) {
        return new WeatherPresenter_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }
}
