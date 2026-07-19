package com.google.android.exoplayer2.p005ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public final class AspectRatioFrameLayout extends FrameLayout {
    private int resizeMode;
    private float videoAspectRatio;

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.resizeMode = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.AspectRatioFrameLayout, 0, 0);
            try {
                this.resizeMode = typedArrayObtainStyledAttributes.getInt(R.styleable.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    public void setAspectRatio(float f) {
        if (this.videoAspectRatio != f) {
            this.videoAspectRatio = f;
            requestLayout();
        }
    }

    public int getResizeMode() {
        return this.resizeMode;
    }

    public void setResizeMode(int i) {
        if (this.resizeMode != i) {
            this.resizeMode = i;
            requestLayout();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.resizeMode == 3 || this.videoAspectRatio <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = measuredWidth;
        float f2 = measuredHeight;
        float f3 = (this.videoAspectRatio / (f / f2)) - 1.0f;
        if (Math.abs(f3) <= 0.01f) {
            return;
        }
        int i3 = this.resizeMode;
        if (i3 != 4) {
            switch (i3) {
                case 1:
                    measuredHeight = (int) (f / this.videoAspectRatio);
                    break;
                case 2:
                    measuredWidth = (int) (f2 * this.videoAspectRatio);
                    break;
                default:
                    if (f3 > 0.0f) {
                        measuredHeight = (int) (f / this.videoAspectRatio);
                    } else {
                        measuredWidth = (int) (f2 * this.videoAspectRatio);
                    }
                    break;
            }
        } else if (f3 > 0.0f) {
            measuredWidth = (int) (f2 * this.videoAspectRatio);
        } else {
            measuredHeight = (int) (f / this.videoAspectRatio);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }
}
