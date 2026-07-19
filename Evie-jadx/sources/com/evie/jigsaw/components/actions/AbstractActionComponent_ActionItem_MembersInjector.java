package com.evie.jigsaw.components.actions;

import com.evie.common.services.events.EventService;
import com.evie.common.services.links.LinkResolver;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.services.shortcuts.ShortcutService;

/* JADX INFO: loaded from: classes.dex */
public final class AbstractActionComponent_ActionItem_MembersInjector {
    public static void injectEventService(AbstractActionComponent.ActionItem actionItem, EventService eventService) {
        actionItem.eventService = eventService;
    }

    public static void injectLinkResolver(AbstractActionComponent.ActionItem actionItem, LinkResolver linkResolver) {
        actionItem.linkResolver = linkResolver;
    }

    public static void injectShortcutService(AbstractActionComponent.ActionItem actionItem, ShortcutService shortcutService) {
        actionItem.shortcutService = shortcutService;
    }

    public static void injectPreferences(AbstractActionComponent.ActionItem actionItem, ActionPreferenceStore actionPreferenceStore) {
        actionItem.preferences = actionPreferenceStore;
    }

    public static void injectImageResolver(AbstractActionComponent.ActionItem actionItem, ImageResolver imageResolver) {
        actionItem.imageResolver = imageResolver;
    }
}
