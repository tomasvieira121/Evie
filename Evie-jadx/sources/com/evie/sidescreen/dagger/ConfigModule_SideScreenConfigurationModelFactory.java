package com.evie.sidescreen.dagger;

import android.content.Context;
import com.evie.models.config.ConfigModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.SideScreenConfiguration;
import com.evie.sidescreen.SideScreenConfigurationModel;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.AbTestConfigurationModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.disposables.CompositeDisposable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ConfigModule_SideScreenConfigurationModelFactory implements Factory<SideScreenConfigurationModel> {
    private final Provider<AbTestConfigurationModel> abTestConfigurationModelProvider;
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<AnalyticsHandler> analyticsHandlerProvider;
    private final Provider<CompositeDisposable> compositeDisposableProvider;
    private final Provider<ConfigModel> configModelProvider;
    private final Provider<SideScreenConfiguration> configurationProvider;
    private final Provider<Context> contextProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<SideScreenSharedPreferencesModel> preferencesModelProvider;
    private final Provider<Integer> versionProvider;

    public ConfigModule_SideScreenConfigurationModelFactory(Provider<ActivationModel> provider, Provider<AbTestConfigurationModel> provider2, Provider<LifecycleCallbacks> provider3, Provider<SideScreenConfiguration> provider4, Provider<ConfigModel> provider5, Provider<AnalyticsHandler> provider6, Provider<Integer> provider7, Provider<Context> provider8, Provider<CompositeDisposable> provider9, Provider<SideScreenSharedPreferencesModel> provider10) {
        this.activationModelProvider = provider;
        this.abTestConfigurationModelProvider = provider2;
        this.lifecycleCallbacksProvider = provider3;
        this.configurationProvider = provider4;
        this.configModelProvider = provider5;
        this.analyticsHandlerProvider = provider6;
        this.versionProvider = provider7;
        this.contextProvider = provider8;
        this.compositeDisposableProvider = provider9;
        this.preferencesModelProvider = provider10;
    }

    @Override // javax.inject.Provider
    public SideScreenConfigurationModel get() {
        return proxySideScreenConfigurationModel(this.activationModelProvider.get(), this.abTestConfigurationModelProvider.get(), this.lifecycleCallbacksProvider.get(), this.configurationProvider.get(), this.configModelProvider.get(), this.analyticsHandlerProvider.get(), this.versionProvider.get(), this.contextProvider.get(), this.compositeDisposableProvider.get(), this.preferencesModelProvider.get());
    }

    public static ConfigModule_SideScreenConfigurationModelFactory create(Provider<ActivationModel> provider, Provider<AbTestConfigurationModel> provider2, Provider<LifecycleCallbacks> provider3, Provider<SideScreenConfiguration> provider4, Provider<ConfigModel> provider5, Provider<AnalyticsHandler> provider6, Provider<Integer> provider7, Provider<Context> provider8, Provider<CompositeDisposable> provider9, Provider<SideScreenSharedPreferencesModel> provider10) {
        return new ConfigModule_SideScreenConfigurationModelFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10);
    }

    public static SideScreenConfigurationModel proxySideScreenConfigurationModel(ActivationModel activationModel, AbTestConfigurationModel abTestConfigurationModel, LifecycleCallbacks lifecycleCallbacks, SideScreenConfiguration sideScreenConfiguration, ConfigModel configModel, AnalyticsHandler analyticsHandler, Integer num, Context context, CompositeDisposable compositeDisposable, SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel) {
        return (SideScreenConfigurationModel) Preconditions.checkNotNull(ConfigModule.sideScreenConfigurationModel(activationModel, abTestConfigurationModel, lifecycleCallbacks, sideScreenConfiguration, configModel, analyticsHandler, num, context, compositeDisposable, sideScreenSharedPreferencesModel), "Cannot return null from a non-@Nullable @Provides method");
    }
}
