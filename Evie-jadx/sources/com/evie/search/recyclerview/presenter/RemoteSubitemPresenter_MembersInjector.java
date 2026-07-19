package com.evie.search.recyclerview.presenter;

import com.evie.common.services.links.LinkResolver;
import com.evie.search.SearchShortcutHandler;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteSubitemPresenter_MembersInjector {
    public static void injectMLinkResolver(RemoteSubitemPresenter remoteSubitemPresenter, LinkResolver linkResolver) {
        remoteSubitemPresenter.mLinkResolver = linkResolver;
    }

    public static void injectShortcutHandler(RemoteSubitemPresenter remoteSubitemPresenter, SearchShortcutHandler searchShortcutHandler) {
        remoteSubitemPresenter.shortcutHandler = searchShortcutHandler;
    }
}
