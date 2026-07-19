package com.evie.sidescreen;

/* JADX INFO: loaded from: classes.dex */
public interface StackLayer {
    boolean isRootLayer();

    boolean onBackPressed();

    void pop(boolean z);
}
