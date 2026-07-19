package com.evie.sidescreen.dagger;

import android.content.Context;
import com.evie.common.AbTestConfiguration;
import com.evie.models.config.ConfigModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.analytics.AbTestConfigurationModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ConfigModule_ProvidesAbTestConfigurationModelFactory implements Factory<AbTestConfigurationModel> {
    private final Provider<AbTestConfiguration> abTestConfigurationProvider;
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<AnalyticsHandler> analyticsHandlerProvider;
    private final Provider<ConfigModel> configModelProvider;
    private final Provider<Context> contextProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<Integer> versionProvider;

    public ConfigModule_ProvidesAbTestConfigurationModelFactory(Provider<AbTestConfiguration> provider, Provider<ConfigModel> provider2, Provider<ActivationModel> provider3, Provider<LifecycleCallbacks> provider4, Provider<AnalyticsHandler> provider5, Provider<Context> provider6, Provider<Integer> provider7) {
        this.abTestConfigurationProvider = provider;
        this.configModelProvider = provider2;
        this.activationModelProvider = provider3;
        this.lifecycleCallbacksProvider = provider4;
        this.analyticsHandlerProvider = provider5;
        this.contextProvider = provider6;
        this.versionProvider = provider7;
    }

    @Override // javax.inject.Provider
    public AbTestConfigurationModel get() {
        return proxyProvidesAbTestConfigurationModel(this.abTestConfigurationProvider.get(), this.configModelProvider.get(), this.activationModelProvider.get(), this.lifecycleCallbacksProvider.get(), this.analyticsHandlerProvider.get(), this.contextProvider.get(), this.versionProvider.get());
    }

    public static ConfigModule_ProvidesAbTestConfigurationModelFactory create(Provider<AbTestConfiguration> provider, Provider<ConfigModel> provider2, Provider<ActivationModel> provider3, Provider<LifecycleCallbacks> provider4, Provider<AnalyticsHandler> provider5, Provider<Context> provider6, Provider<Integer> provider7) {
        return new ConfigModule_ProvidesAbTestConfigurationModelFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static AbTestConfigurationModel proxyProvidesAbTestConfigurationModel(AbTestConfiguration abTestConfiguration, ConfigModel configModel, ActivationModel activationModel, LifecycleCallbacks lifecycleCallbacks, AnalyticsHandler analyticsHandler, Context context, Integer num) {
        return (AbTestConfigurationModel) Preconditions.checkNotNull(ConfigModule.providesAbTestConfigurationModel(abTestConfiguration, configModel, activationModel, lifecycleCallbacks, analyticsHandler, context, num), "Cannot return null from a non-@Nullable @Provides method");
    }
}
