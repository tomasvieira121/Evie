package com.voxel.simplesearchlauncher.dagger.module;

import android.app.Application;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.jigsaw.JigsawAnalyticsService;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class JigsawModule_ProvidesJigsawAnalyticsServiceFactory implements Factory<JigsawAnalyticsService> {
    private final Provider<ActionPreferenceStore> actionPreferenceStoreProvider;
    private final Provider<AnalyticsHandler> analyticsHandlerProvider;
    private final Provider<Application> applicationProvider;
    private final JigsawModule module;

    public JigsawModule_ProvidesJigsawAnalyticsServiceFactory(JigsawModule jigsawModule, Provider<Application> provider, Provider<AnalyticsHandler> provider2, Provider<ActionPreferenceStore> provider3) {
        this.module = jigsawModule;
        this.applicationProvider = provider;
        this.analyticsHandlerProvider = provider2;
        this.actionPreferenceStoreProvider = provider3;
    }

    @Override // javax.inject.Provider
    public JigsawAnalyticsService get() {
        return proxyProvidesJigsawAnalyticsService(this.module, this.applicationProvider.get(), this.analyticsHandlerProvider.get(), this.actionPreferenceStoreProvider.get());
    }

    public static JigsawModule_ProvidesJigsawAnalyticsServiceFactory create(JigsawModule jigsawModule, Provider<Application> provider, Provider<AnalyticsHandler> provider2, Provider<ActionPreferenceStore> provider3) {
        return new JigsawModule_ProvidesJigsawAnalyticsServiceFactory(jigsawModule, provider, provider2, provider3);
    }

    public static JigsawAnalyticsService proxyProvidesJigsawAnalyticsService(JigsawModule jigsawModule, Application application, AnalyticsHandler analyticsHandler, ActionPreferenceStore actionPreferenceStore) {
        return (JigsawAnalyticsService) Preconditions.checkNotNull(jigsawModule.providesJigsawAnalyticsService(application, analyticsHandler, actionPreferenceStore), "Cannot return null from a non-@Nullable @Provides method");
    }
}
