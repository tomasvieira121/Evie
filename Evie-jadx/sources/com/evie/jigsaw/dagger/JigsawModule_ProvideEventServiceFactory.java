package com.evie.jigsaw.dagger;

import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.events.EventService;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class JigsawModule_ProvideEventServiceFactory implements Factory<EventService> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final JigsawModule module;

    public JigsawModule_ProvideEventServiceFactory(JigsawModule jigsawModule, Provider<AnalyticsService> provider) {
        this.module = jigsawModule;
        this.analyticsProvider = provider;
    }

    @Override // javax.inject.Provider
    public EventService get() {
        return proxyProvideEventService(this.module, this.analyticsProvider.get());
    }

    public static JigsawModule_ProvideEventServiceFactory create(JigsawModule jigsawModule, Provider<AnalyticsService> provider) {
        return new JigsawModule_ProvideEventServiceFactory(jigsawModule, provider);
    }

    public static EventService proxyProvideEventService(JigsawModule jigsawModule, AnalyticsService analyticsService) {
        return (EventService) Preconditions.checkNotNull(jigsawModule.provideEventService(analyticsService), "Cannot return null from a non-@Nullable @Provides method");
    }
}
