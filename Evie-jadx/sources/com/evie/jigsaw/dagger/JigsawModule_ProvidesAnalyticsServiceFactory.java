package com.evie.jigsaw.dagger;

import com.evie.common.services.analytics.AnalyticsService;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class JigsawModule_ProvidesAnalyticsServiceFactory implements Factory<AnalyticsService> {
    private final JigsawModule module;

    public JigsawModule_ProvidesAnalyticsServiceFactory(JigsawModule jigsawModule) {
        this.module = jigsawModule;
    }

    @Override // javax.inject.Provider
    public AnalyticsService get() {
        return proxyProvidesAnalyticsService(this.module);
    }

    public static JigsawModule_ProvidesAnalyticsServiceFactory create(JigsawModule jigsawModule) {
        return new JigsawModule_ProvidesAnalyticsServiceFactory(jigsawModule);
    }

    public static AnalyticsService proxyProvidesAnalyticsService(JigsawModule jigsawModule) {
        return (AnalyticsService) Preconditions.checkNotNull(jigsawModule.providesAnalyticsService(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
