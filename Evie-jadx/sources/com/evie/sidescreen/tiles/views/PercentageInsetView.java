package com.evie.sidescreen.tiles.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.util.AttributeSet;
import android.view.View;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class PercentageInsetView extends View {
    private float mInsetBottom;
    private int mInsetBottomMaximum;
    private int mInsetBottomMinimum;
    private float mInsetLeft;
    private int mInsetLeftMaximum;
    private int mInsetLeftMinimum;
    private float mInsetRight;
    private int mInsetRightMaximum;
    private int mInsetRightMinimum;
    private InsetDrawable mInsetSource;
    private float mInsetTop;
    private int mInsetTopMaximum;
    private int mInsetTopMinimum;
    private Drawable mSource;

    public PercentageInsetView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PercentageInsetView);
            try {
                this.mSource = typedArrayObtainStyledAttributes.getDrawable(R.styleable.PercentageInsetView_src);
                this.mInsetTop = typedArrayObtainStyledAttributes.getFloat(R.styleable.PercentageInsetView_insetTopPercent, 0.0f);
                this.mInsetTopMinimum = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PercentageInsetView_insetTopMinimum, Integer.MIN_VALUE);
                this.mInsetTopMaximum = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PercentageInsetView_insetTopMaximum, Integer.MAX_VALUE);
                this.mInsetBottom = typedArrayObtainStyledAttributes.getFloat(R.styleable.PercentageInsetView_insetBottomPercent, 0.0f);
                this.mInsetBottomMinimum = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PercentageInsetView_insetBottomMinimum, Integer.MIN_VALUE);
                this.mInsetBottomMaximum = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PercentageInsetView_insetBottomMaximum, Integer.MAX_VALUE);
                this.mInsetLeft = typedArrayObtainStyledAttributes.getFloat(R.styleable.PercentageInsetView_insetLeftPercent, 0.0f);
                this.mInsetLeftMinimum = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PercentageInsetView_insetLeftMinimum, Integer.MIN_VALUE);
                this.mInsetLeftMaximum = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PercentageInsetView_insetLeftMaximum, Integer.MAX_VALUE);
                this.mInsetRight = typedArrayObtainStyledAttributes.getFloat(R.styleable.PercentageInsetView_insetRightPercent, 0.0f);
                this.mInsetRightMinimum = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PercentageInsetView_insetRightMinimum, Integer.MIN_VALUE);
                this.mInsetRightMaximum = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PercentageInsetView_insetRightMaximum, Integer.MAX_VALUE);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.mSource;
        if (drawable != null) {
            float f = i;
            float f2 = i2;
            this.mInsetSource = new InsetDrawable(drawable, Math.max(this.mInsetLeftMinimum, Math.min(this.mInsetLeftMaximum, (int) (this.mInsetLeft * f))), Math.max(this.mInsetTopMinimum, Math.min(this.mInsetTopMaximum, (int) (this.mInsetTop * f2))), Math.max(this.mInsetRightMinimum, Math.min(this.mInsetRightMaximum, (int) (f * this.mInsetRight))), Math.max(this.mInsetBottomMinimum, Math.min(this.mInsetBottomMaximum, (int) (f2 * this.mInsetBottom))));
            setBackground(this.mInsetSource);
        }
    }
}
