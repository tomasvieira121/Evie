package com.evie.jigsaw.views;

import com.evie.common.services.links.LinkResolver;

/* JADX INFO: loaded from: classes.dex */
public final class RichTextView_MembersInjector {
    public static void injectMLinkResolver(RichTextView richTextView, LinkResolver linkResolver) {
        richTextView.mLinkResolver = linkResolver;
    }
}
