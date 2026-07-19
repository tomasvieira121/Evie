package com.evie.jigsaw.dagger;

import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.events.EventService;
import com.evie.common.services.links.LinkResolver;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class JigsawModule_ProvidesLinkResolverFactory implements Factory<LinkResolver> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<EventService> eventsProvider;
    private final JigsawModule module;

    public JigsawModule_ProvidesLinkResolverFactory(JigsawModule jigsawModule, Provider<EventService> provider, Provider<AnalyticsService> provider2) {
        this.module = jigsawModule;
        this.eventsProvider = provider;
        this.analyticsProvider = provider2;
    }

    @Override // javax.inject.Provider
    public LinkResolver get() {
        return proxyProvidesLinkResolver(this.module, this.eventsProvider.get(), this.analyticsProvider.get());
    }

    public static JigsawModule_ProvidesLinkResolverFactory create(JigsawModule jigsawModule, Provider<EventService> provider, Provider<AnalyticsService> provider2) {
        return new JigsawModule_ProvidesLinkResolverFactory(jigsawModule, provider, provider2);
    }

    public static LinkResolver proxyProvidesLinkResolver(JigsawModule jigsawModule, EventService eventService, AnalyticsService analyticsService) {
        return (LinkResolver) Preconditions.checkNotNull(jigsawModule.providesLinkResolver(eventService, analyticsService), "Cannot return null from a non-@Nullable @Provides method");
    }
}
