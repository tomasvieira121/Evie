package com.evie.sidescreen.tiles.articles;

import io.reactivex.functions.Consumer;

/* JADX INFO: renamed from: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroVideoPresenter$NPiPJtbeomc1s94zP66a_102LQ8 */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0586xbacd4e17 implements Consumer {
    private final /* synthetic */ ArticleTileHeroVideoPresenter f$0;

    public /* synthetic */ C0586xbacd4e17(ArticleTileHeroVideoPresenter articleTileHeroVideoPresenter) {
        this.f$0 = articleTileHeroVideoPresenter;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        this.f$0.handleUnanticipatedException((Throwable) obj);
    }
}
