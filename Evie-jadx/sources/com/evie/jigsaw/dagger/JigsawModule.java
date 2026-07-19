package com.evie.jigsaw.dagger;

import android.app.Application;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.analytics.BaseAnalyticsService;
import com.evie.common.services.events.EventService;
import com.evie.common.services.links.LinkResolver;
import com.evie.jigsaw.JigsawSettings;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.evie.jigsaw.services.attribution.ImageAttributionService;
import com.evie.jigsaw.services.images.DelegatingImageResolver;
import com.evie.jigsaw.services.images.ExternalImageResolver;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.services.layout.DelegatingLayoutService;
import com.evie.jigsaw.services.layout.LayoutService;
import com.evie.jigsaw.services.shortcuts.ShortcutService;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class JigsawModule {
    private final JigsawSettings settings;

    public JigsawModule(JigsawSettings jigsawSettings) {
        this.settings = jigsawSettings;
    }

    JigsawSettings providesSettings() {
        return this.settings;
    }

    LayoutService providesLayoutService() {
        return new DelegatingLayoutService(new ArrayList(this.settings.layoutServices()));
    }

    EventService provideEventService(AnalyticsService analyticsService) {
        return new EventService(LocalBroadcastManager.getInstance(this.settings.application()), analyticsService);
    }

    Application providesApplication() {
        return this.settings.application();
    }

    ActionPreferenceStore providesActionPreferences() {
        return this.settings.actionPreferenceStore();
    }

    ImageResolver providesImageResolver() {
        ImageResolver imageResolver = this.settings.imageResolver();
        ExternalImageResolver externalImageResolver = new ExternalImageResolver();
        return imageResolver != null ? new DelegatingImageResolver(imageResolver, externalImageResolver) : externalImageResolver;
    }

    LinkResolver providesLinkResolver(EventService eventService, AnalyticsService analyticsService) {
        return new LinkResolver(eventService, analyticsService);
    }

    ShortcutService providesShortcutService(ImageResolver imageResolver, AnalyticsService analyticsService) {
        if (this.settings.shortcuts()) {
            return new ShortcutService(imageResolver, analyticsService, 0.4f);
        }
        return null;
    }

    AnalyticsService providesAnalyticsService() {
        AnalyticsService analyticsService = this.settings.analyticsService();
        return analyticsService != null ? analyticsService : new BaseAnalyticsService();
    }

    ImageAttributionService providesImageAttributionService(ImageResolver imageResolver) {
        return new ImageAttributionService(imageResolver);
    }
}
