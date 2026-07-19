package org.adw.library.widgets.discreteseekbar.internal.drawable;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.os.SystemClock;
import android.view.animation.Interpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;

/* JADX INFO: loaded from: classes2.dex */
public class AlmostRippleDrawable extends StateDrawable implements Animatable {
    private float mAnimationInitialValue;
    private float mCurrentScale;
    private int mDisabledColor;
    private int mDuration;
    private int mFocusedColor;
    private Interpolator mInterpolator;
    private int mPressedColor;
    private boolean mReverse;
    private int mRippleBgColor;
    private int mRippleColor;
    private boolean mRunning;
    private long mStartTime;
    private final Runnable mUpdater;

    private int decreasedAlpha(int i) {
        return (i * 100) >> 8;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
    }

    public AlmostRippleDrawable(ColorStateList colorStateList) {
        super(colorStateList);
        this.mCurrentScale = 0.0f;
        this.mReverse = false;
        this.mRunning = false;
        this.mDuration = 250;
        this.mUpdater = new Runnable() { // from class: org.adw.library.widgets.discreteseekbar.internal.drawable.AlmostRippleDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                long jUptimeMillis = SystemClock.uptimeMillis();
                long j = jUptimeMillis - AlmostRippleDrawable.this.mStartTime;
                if (j < AlmostRippleDrawable.this.mDuration) {
                    float interpolation = AlmostRippleDrawable.this.mInterpolator.getInterpolation(j / AlmostRippleDrawable.this.mDuration);
                    AlmostRippleDrawable almostRippleDrawable = AlmostRippleDrawable.this;
                    almostRippleDrawable.scheduleSelf(almostRippleDrawable.mUpdater, jUptimeMillis + 16);
                    AlmostRippleDrawable.this.updateAnimation(interpolation);
                    return;
                }
                AlmostRippleDrawable almostRippleDrawable2 = AlmostRippleDrawable.this;
                almostRippleDrawable2.unscheduleSelf(almostRippleDrawable2.mUpdater);
                AlmostRippleDrawable.this.mRunning = false;
                AlmostRippleDrawable.this.updateAnimation(1.0f);
            }
        };
        this.mInterpolator = new FastOutSlowInInterpolator();
        setColor(colorStateList);
    }

    public void setColor(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.mFocusedColor = colorStateList.getColorForState(new int[]{R.attr.state_enabled, R.attr.state_focused}, defaultColor);
        this.mPressedColor = colorStateList.getColorForState(new int[]{R.attr.state_enabled, R.attr.state_pressed}, defaultColor);
        this.mDisabledColor = colorStateList.getColorForState(new int[]{-16842910}, defaultColor);
        this.mFocusedColor = getModulatedAlphaColor(130, this.mFocusedColor);
        this.mPressedColor = getModulatedAlphaColor(130, this.mPressedColor);
        this.mDisabledColor = getModulatedAlphaColor(130, this.mDisabledColor);
    }

    private static int getModulatedAlphaColor(int i, int i2) {
        return Color.argb((Color.alpha(i2) * (i + (i >> 7))) >> 8, Color.red(i2), Color.green(i2), Color.blue(i2));
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.drawable.StateDrawable
    public void doDraw(Canvas canvas, Paint paint) {
        Rect bounds = getBounds();
        int iMin = Math.min(bounds.width(), bounds.height());
        float f = this.mCurrentScale;
        int i = this.mRippleColor;
        int i2 = this.mRippleBgColor;
        float f2 = iMin / 2;
        float f3 = f2 * f;
        if (f > 0.0f) {
            if (i2 != 0) {
                paint.setColor(i2);
                paint.setAlpha(decreasedAlpha(Color.alpha(i2)));
                canvas.drawCircle(bounds.centerX(), bounds.centerY(), f2, paint);
            }
            if (i != 0) {
                paint.setColor(i);
                paint.setAlpha(modulateAlpha(Color.alpha(i)));
                canvas.drawCircle(bounds.centerX(), bounds.centerY(), f3, paint);
            }
        }
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.drawable.StateDrawable, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        boolean z = false;
        for (int i : getState()) {
            if (i == 16842919) {
                z = true;
            }
        }
        super.setState(iArr);
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = false;
        for (int i2 : iArr) {
            if (i2 == 16842908) {
                z4 = true;
            } else if (i2 == 16842919) {
                z3 = true;
            } else if (i2 == 16842910) {
                z2 = false;
            }
        }
        if (z2) {
            unscheduleSelf(this.mUpdater);
            this.mRippleColor = this.mDisabledColor;
            this.mRippleBgColor = 0;
            this.mCurrentScale = 0.5f;
            invalidateSelf();
        } else if (z3) {
            animateToPressed();
            int i3 = this.mPressedColor;
            this.mRippleBgColor = i3;
            this.mRippleColor = i3;
        } else if (z) {
            int i4 = this.mPressedColor;
            this.mRippleBgColor = i4;
            this.mRippleColor = i4;
            animateToNormal();
        } else if (z4) {
            this.mRippleColor = this.mFocusedColor;
            this.mRippleBgColor = 0;
            this.mCurrentScale = 1.0f;
            invalidateSelf();
        } else {
            this.mRippleColor = 0;
            this.mRippleBgColor = 0;
            this.mCurrentScale = 0.0f;
            invalidateSelf();
        }
        return true;
    }

    public void animateToPressed() {
        unscheduleSelf(this.mUpdater);
        float f = this.mCurrentScale;
        if (f < 1.0f) {
            this.mReverse = false;
            this.mRunning = true;
            this.mAnimationInitialValue = f;
            this.mDuration = (int) ((1.0f - ((this.mAnimationInitialValue - 0.0f) / 1.0f)) * 250.0f);
            this.mStartTime = SystemClock.uptimeMillis();
            scheduleSelf(this.mUpdater, this.mStartTime + 16);
        }
    }

    public void animateToNormal() {
        unscheduleSelf(this.mUpdater);
        float f = this.mCurrentScale;
        if (f > 0.0f) {
            this.mReverse = true;
            this.mRunning = true;
            this.mAnimationInitialValue = f;
            this.mDuration = (int) ((1.0f - ((this.mAnimationInitialValue - 1.0f) / (-1.0f))) * 250.0f);
            this.mStartTime = SystemClock.uptimeMillis();
            scheduleSelf(this.mUpdater, this.mStartTime + 16);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAnimation(float f) {
        float f2 = this.mAnimationInitialValue;
        this.mCurrentScale = f2 + (((this.mReverse ? 0.0f : 1.0f) - f2) * f);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }
}
