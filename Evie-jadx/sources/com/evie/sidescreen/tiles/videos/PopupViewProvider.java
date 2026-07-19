package com.evie.sidescreen.tiles.videos;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class PopupViewProvider {
    private ViewGroup mPopupView;

    public PopupViewProvider(ViewGroup viewGroup) {
        this.mPopupView = viewGroup;
    }

    public void setPopupView(ViewGroup viewGroup) {
        this.mPopupView = viewGroup;
    }

    public ViewGroup get() {
        return this.mPopupView;
    }
}
