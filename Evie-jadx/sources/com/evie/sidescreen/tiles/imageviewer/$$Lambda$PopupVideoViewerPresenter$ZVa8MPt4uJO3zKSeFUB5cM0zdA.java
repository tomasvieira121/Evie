package com.evie.sidescreen.tiles.imageviewer;

import io.reactivex.functions.Consumer;

/* JADX INFO: renamed from: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKS-eFUB5cM0zdA, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKSeFUB5cM0zdA implements Consumer {
    private final /* synthetic */ PopupVideoViewerPresenter f$0;

    public /* synthetic */ $$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKSeFUB5cM0zdA(PopupVideoViewerPresenter popupVideoViewerPresenter) {
        this.f$0 = popupVideoViewerPresenter;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        this.f$0.handleUnanticipatedException((Throwable) obj);
    }
}
