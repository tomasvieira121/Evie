package com.voxel.simplesearchlauncher.view;

import android.animation.AnimatorSet;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Slide {
    protected final View mView;

    public abstract AnimatorSet getSlideEnteringAnimation(SlideLayout slideLayout);

    public abstract AnimatorSet getSlideExitingAnimation(SlideLayout slideLayout);

    public void onEnteringSlide() {
    }

    public void onExitingSlide() {
    }

    public Slide(View view) {
        this.mView = view;
    }

    final View getView() {
        return this.mView;
    }
}
