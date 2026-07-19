package org.adw.library.widgets.discreteseekbar.internal.compat;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(11)
public class AnimatorCompatV11 extends AnimatorCompat {
    ValueAnimator animator;

    public AnimatorCompatV11(float f, float f2, final AnimatorCompat.AnimationFrameUpdateListener animationFrameUpdateListener) {
        this.animator = ValueAnimator.ofFloat(f, f2);
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompatV11.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                animationFrameUpdateListener.onAnimationFrame(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
    public void cancel() {
        this.animator.cancel();
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
    public boolean isRunning() {
        return this.animator.isRunning();
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
    public void setDuration(int i) {
        this.animator.setDuration(i);
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
    public void start() {
        this.animator.start();
    }
}
