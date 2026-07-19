package com.evie.sidescreen.dagger;

import android.content.Context;
import com.evie.common.AbTestConfiguration;
import com.evie.models.sidescreen.SideScreenContentAPI;
import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: renamed from: com.evie.sidescreen.dagger.SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C0494x2690c3a1 implements Factory<SideScreenRelatedContentModel> {
    private final Provider<AbTestConfiguration> abTestConfigurationProvider;
    private final Provider<AnalyticsHandler> analyticsHandlerProvider;
    private final Provider<SideScreenContentAPI> apiProvider;
    private final Provider<Integer> appVersionProvider;
    private final Provider<Context> contextProvider;
    private final Provider<LocationHandler> locationHandlerProvider;
    private final SideScreenContentModule module;

    public C0494x2690c3a1(SideScreenContentModule sideScreenContentModule, Provider<Context> provider, Provider<SideScreenContentAPI> provider2, Provider<Integer> provider3, Provider<AbTestConfiguration> provider4, Provider<AnalyticsHandler> provider5, Provider<LocationHandler> provider6) {
        this.module = sideScreenContentModule;
        this.contextProvider = provider;
        this.apiProvider = provider2;
        this.appVersionProvider = provider3;
        this.abTestConfigurationProvider = provider4;
        this.analyticsHandlerProvider = provider5;
        this.locationHandlerProvider = provider6;
    }

    @Override // javax.inject.Provider
    public SideScreenRelatedContentModel get() {
        return proxyProvidesSideScreenRelatedContentModel(this.module, this.contextProvider.get(), this.apiProvider.get(), this.appVersionProvider.get(), this.abTestConfigurationProvider.get(), this.analyticsHandlerProvider.get(), this.locationHandlerProvider.get());
    }

    public static C0494x2690c3a1 create(SideScreenContentModule sideScreenContentModule, Provider<Context> provider, Provider<SideScreenContentAPI> provider2, Provider<Integer> provider3, Provider<AbTestConfiguration> provider4, Provider<AnalyticsHandler> provider5, Provider<LocationHandler> provider6) {
        return new C0494x2690c3a1(sideScreenContentModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static SideScreenRelatedContentModel proxyProvidesSideScreenRelatedContentModel(SideScreenContentModule sideScreenContentModule, Context context, SideScreenContentAPI sideScreenContentAPI, Integer num, AbTestConfiguration abTestConfiguration, AnalyticsHandler analyticsHandler, LocationHandler locationHandler) {
        return (SideScreenRelatedContentModel) Preconditions.checkNotNull(sideScreenContentModule.providesSideScreenRelatedContentModel(context, sideScreenContentAPI, num, abTestConfiguration, analyticsHandler, locationHandler), "Cannot return null from a non-@Nullable @Provides method");
    }
}
