package com.voxel.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes.dex */
abstract class LauncherAnimatorUpdateListener implements ValueAnimator.AnimatorUpdateListener {
    abstract void onAnimationUpdate(float f, float f2);

    LauncherAnimatorUpdateListener() {
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        onAnimationUpdate(1.0f - fFloatValue, fFloatValue);
    }
}
