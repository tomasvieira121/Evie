package com.evie.jigsaw.dagger;

import com.evie.common.services.analytics.AnalyticsService;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.services.shortcuts.ShortcutService;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class JigsawModule_ProvidesShortcutServiceFactory implements Factory<ShortcutService> {
    private final Provider<AnalyticsService> analyticsServiceProvider;
    private final Provider<ImageResolver> imageResolverProvider;
    private final JigsawModule module;

    public JigsawModule_ProvidesShortcutServiceFactory(JigsawModule jigsawModule, Provider<ImageResolver> provider, Provider<AnalyticsService> provider2) {
        this.module = jigsawModule;
        this.imageResolverProvider = provider;
        this.analyticsServiceProvider = provider2;
    }

    @Override // javax.inject.Provider
    public ShortcutService get() {
        return proxyProvidesShortcutService(this.module, this.imageResolverProvider.get(), this.analyticsServiceProvider.get());
    }

    public static JigsawModule_ProvidesShortcutServiceFactory create(JigsawModule jigsawModule, Provider<ImageResolver> provider, Provider<AnalyticsService> provider2) {
        return new JigsawModule_ProvidesShortcutServiceFactory(jigsawModule, provider, provider2);
    }

    public static ShortcutService proxyProvidesShortcutService(JigsawModule jigsawModule, ImageResolver imageResolver, AnalyticsService analyticsService) {
        return jigsawModule.providesShortcutService(imageResolver, analyticsService);
    }
}
