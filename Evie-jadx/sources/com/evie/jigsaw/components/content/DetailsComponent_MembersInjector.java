package com.evie.jigsaw.components.content;

import com.evie.common.services.links.LinkResolver;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.evie.jigsaw.services.attribution.ImageAttributionService;

/* JADX INFO: loaded from: classes.dex */
public final class DetailsComponent_MembersInjector {
    public static void injectLinkResolver(DetailsComponent detailsComponent, LinkResolver linkResolver) {
        detailsComponent.linkResolver = linkResolver;
    }

    public static void injectActionPreferenceStore(DetailsComponent detailsComponent, ActionPreferenceStore actionPreferenceStore) {
        detailsComponent.actionPreferenceStore = actionPreferenceStore;
    }

    public static void injectAttributionService(DetailsComponent detailsComponent, ImageAttributionService imageAttributionService) {
        detailsComponent.attributionService = imageAttributionService;
    }
}
