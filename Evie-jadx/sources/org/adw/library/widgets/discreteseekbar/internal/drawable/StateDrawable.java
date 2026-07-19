package org.adw.library.widgets.discreteseekbar.internal.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StateDrawable extends Drawable {
    private int mAlpha = 255;
    private int mCurrentColor;
    private final Paint mPaint;
    private ColorStateList mTintStateList;

    abstract void doDraw(Canvas canvas, Paint paint);

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public StateDrawable(ColorStateList colorStateList) {
        setColorStateList(colorStateList);
        this.mPaint = new Paint(1);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mTintStateList.isStateful() || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return updateTint(iArr) || super.setState(iArr);
    }

    private boolean updateTint(int[] iArr) {
        int colorForState = this.mTintStateList.getColorForState(iArr, this.mCurrentColor);
        if (colorForState == this.mCurrentColor) {
            return false;
        }
        this.mCurrentColor = colorForState;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mPaint.setColor(this.mCurrentColor);
        this.mPaint.setAlpha(modulateAlpha(Color.alpha(this.mCurrentColor)));
        doDraw(canvas, this.mPaint);
    }

    public void setColorStateList(ColorStateList colorStateList) {
        this.mTintStateList = colorStateList;
        this.mCurrentColor = colorStateList.getDefaultColor();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mAlpha = i;
        invalidateSelf();
    }

    int modulateAlpha(int i) {
        int i2 = this.mAlpha;
        return (i * (i2 + (i2 >> 7))) >> 8;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }
}
