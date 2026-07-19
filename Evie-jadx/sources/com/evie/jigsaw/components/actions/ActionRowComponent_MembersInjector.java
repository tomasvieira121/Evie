package com.evie.jigsaw.components.actions;

import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.links.LinkResolver;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;

/* JADX INFO: loaded from: classes.dex */
public final class ActionRowComponent_MembersInjector {
    public static void injectPreferences(ActionRowComponent actionRowComponent, ActionPreferenceStore actionPreferenceStore) {
        actionRowComponent.preferences = actionPreferenceStore;
    }

    public static void injectAnalyticsService(ActionRowComponent actionRowComponent, AnalyticsService analyticsService) {
        actionRowComponent.analyticsService = analyticsService;
    }

    public static void injectLinkResolver(ActionRowComponent actionRowComponent, LinkResolver linkResolver) {
        actionRowComponent.linkResolver = linkResolver;
    }
}
