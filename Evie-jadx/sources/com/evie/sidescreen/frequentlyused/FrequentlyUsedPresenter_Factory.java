package com.evie.sidescreen.frequentlyused;

import android.content.Context;
import com.evie.common.AbTestConfiguration;
import com.evie.models.frequentlyused.FrequentlyUsedModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class FrequentlyUsedPresenter_Factory implements Factory<FrequentlyUsedPresenter> {
    private final Provider<AbTestConfiguration> abTestConfigurationProvider;
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<SideScreenDependencies.ActivityOverrides> activityOverridesProvider;
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<AnalyticsHandler> analyticsProvider;
    private final Provider<Context> contextProvider;
    private final Provider<FrequentlyUsedModel> frequentlyUsedModelProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;

    public FrequentlyUsedPresenter_Factory(Provider<Context> provider, Provider<ActivityStarter> provider2, Provider<ActivationModel> provider3, Provider<LifecycleCallbacks> provider4, Provider<FrequentlyUsedModel> provider5, Provider<AnalyticsHandler> provider6, Provider<AnalyticsModel> provider7, Provider<SideScreenDependencies.ActivityOverrides> provider8, Provider<AbTestConfiguration> provider9) {
        this.contextProvider = provider;
        this.activityStarterProvider = provider2;
        this.activationModelProvider = provider3;
        this.lifecycleCallbacksProvider = provider4;
        this.frequentlyUsedModelProvider = provider5;
        this.analyticsProvider = provider6;
        this.analyticsModelProvider = provider7;
        this.activityOverridesProvider = provider8;
        this.abTestConfigurationProvider = provider9;
    }

    @Override // javax.inject.Provider
    public FrequentlyUsedPresenter get() {
        return new FrequentlyUsedPresenter(this.contextProvider.get(), this.activityStarterProvider.get(), this.activationModelProvider.get(), this.lifecycleCallbacksProvider.get(), this.frequentlyUsedModelProvider.get(), this.analyticsProvider.get(), this.analyticsModelProvider.get(), this.activityOverridesProvider.get(), this.abTestConfigurationProvider.get());
    }

    public static FrequentlyUsedPresenter_Factory create(Provider<Context> provider, Provider<ActivityStarter> provider2, Provider<ActivationModel> provider3, Provider<LifecycleCallbacks> provider4, Provider<FrequentlyUsedModel> provider5, Provider<AnalyticsHandler> provider6, Provider<AnalyticsModel> provider7, Provider<SideScreenDependencies.ActivityOverrides> provider8, Provider<AbTestConfiguration> provider9) {
        return new FrequentlyUsedPresenter_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }
}
