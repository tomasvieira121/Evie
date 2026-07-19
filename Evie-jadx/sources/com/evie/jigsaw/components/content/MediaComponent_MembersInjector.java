package com.evie.jigsaw.components.content;

import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.links.LinkResolver;
import com.evie.jigsaw.services.attribution.ImageAttributionService;

/* JADX INFO: loaded from: classes.dex */
public final class MediaComponent_MembersInjector {
    public static void injectLinkResolver(MediaComponent mediaComponent, LinkResolver linkResolver) {
        mediaComponent.linkResolver = linkResolver;
    }

    public static void injectAnalyticsService(MediaComponent mediaComponent, AnalyticsService analyticsService) {
        mediaComponent.analyticsService = analyticsService;
    }

    public static void injectAttributionService(MediaComponent mediaComponent, ImageAttributionService imageAttributionService) {
        mediaComponent.attributionService = imageAttributionService;
    }
}
