package org.adw.library.widgets.discreteseekbar.internal.compat;

import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AnimatorCompat {

    public interface AnimationFrameUpdateListener {
        void onAnimationFrame(float f);
    }

    public abstract void cancel();

    public abstract boolean isRunning();

    public abstract void setDuration(int i);

    public abstract void start();

    AnimatorCompat() {
    }

    public static final AnimatorCompat create(float f, float f2, AnimationFrameUpdateListener animationFrameUpdateListener) {
        if (Build.VERSION.SDK_INT >= 11) {
            return new AnimatorCompatV11(f, f2, animationFrameUpdateListener);
        }
        return new AnimatorCompatBase(f, f2, animationFrameUpdateListener);
    }

    private static class AnimatorCompatBase extends AnimatorCompat {
        private final float mEndValue;
        private final AnimationFrameUpdateListener mListener;

        @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
        public void cancel() {
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
        public boolean isRunning() {
            return false;
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
        public void setDuration(int i) {
        }

        public AnimatorCompatBase(float f, float f2, AnimationFrameUpdateListener animationFrameUpdateListener) {
            this.mListener = animationFrameUpdateListener;
            this.mEndValue = f2;
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
        public void start() {
            this.mListener.onAnimationFrame(this.mEndValue);
        }
    }
}
