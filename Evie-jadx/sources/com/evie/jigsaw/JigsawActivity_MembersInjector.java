package com.evie.jigsaw;

import com.evie.jigsaw.services.layout.LayoutService;

/* JADX INFO: loaded from: classes.dex */
public final class JigsawActivity_MembersInjector {
    public static void injectLayouts(JigsawActivity jigsawActivity, LayoutService layoutService) {
        jigsawActivity.layouts = layoutService;
    }
}
