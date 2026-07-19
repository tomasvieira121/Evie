package com.facebook.fresco.animation.drawable;

/* JADX INFO: loaded from: classes.dex */
public interface AnimationListener {
    void onAnimationFrame(AnimatedDrawable2 animatedDrawable2, int i);

    void onAnimationRepeat(AnimatedDrawable2 animatedDrawable2);

    void onAnimationStart(AnimatedDrawable2 animatedDrawable2);

    void onAnimationStop(AnimatedDrawable2 animatedDrawable2);
}
