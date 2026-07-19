package com.evie.sidescreen.dagger;

import com.evie.sidescreen.SideScreenView;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenModule {
    public PopupViewProvider providesPopupView(SideScreenView sideScreenView) {
        return new PopupViewProvider(sideScreenView.getPopupView());
    }
}
