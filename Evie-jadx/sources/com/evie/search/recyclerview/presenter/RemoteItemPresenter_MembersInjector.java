package com.evie.search.recyclerview.presenter;

import com.evie.common.services.links.LinkResolver;
import com.evie.search.SearchShortcutHandler;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteItemPresenter_MembersInjector {
    public static void injectMLinkResolver(RemoteItemPresenter remoteItemPresenter, LinkResolver linkResolver) {
        remoteItemPresenter.mLinkResolver = linkResolver;
    }

    public static void injectShortcutHandler(RemoteItemPresenter remoteItemPresenter, SearchShortcutHandler searchShortcutHandler) {
        remoteItemPresenter.shortcutHandler = searchShortcutHandler;
    }
}
