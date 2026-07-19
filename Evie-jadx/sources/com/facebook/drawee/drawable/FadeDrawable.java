package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.facebook.common.internal.Preconditions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class FadeDrawable extends ArrayDrawable {
    int mAlpha;
    int[] mAlphas;
    int mDurationMs;
    boolean[] mIsLayerOn;
    private final Drawable[] mLayers;
    int mPreventInvalidateCount;
    int[] mStartAlphas;
    long mStartTimeMs;
    int mTransitionState;

    public FadeDrawable(Drawable[] drawableArr) {
        super(drawableArr);
        Preconditions.checkState(drawableArr.length >= 1, "At least one layer required!");
        this.mLayers = drawableArr;
        this.mStartAlphas = new int[drawableArr.length];
        this.mAlphas = new int[drawableArr.length];
        this.mAlpha = 255;
        this.mIsLayerOn = new boolean[drawableArr.length];
        this.mPreventInvalidateCount = 0;
        resetInternal();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.mPreventInvalidateCount == 0) {
            super.invalidateSelf();
        }
    }

    public void beginBatchMode() {
        this.mPreventInvalidateCount++;
    }

    public void endBatchMode() {
        this.mPreventInvalidateCount--;
        invalidateSelf();
    }

    public void setTransitionDuration(int i) {
        this.mDurationMs = i;
        if (this.mTransitionState == 1) {
            this.mTransitionState = 0;
        }
    }

    private void resetInternal() {
        this.mTransitionState = 2;
        Arrays.fill(this.mStartAlphas, 0);
        this.mStartAlphas[0] = 255;
        Arrays.fill(this.mAlphas, 0);
        this.mAlphas[0] = 255;
        Arrays.fill(this.mIsLayerOn, false);
        this.mIsLayerOn[0] = true;
    }

    public void fadeInLayer(int i) {
        this.mTransitionState = 0;
        this.mIsLayerOn[i] = true;
        invalidateSelf();
    }

    public void fadeOutLayer(int i) {
        this.mTransitionState = 0;
        this.mIsLayerOn[i] = false;
        invalidateSelf();
    }

    public void fadeInAllLayers() {
        this.mTransitionState = 0;
        Arrays.fill(this.mIsLayerOn, true);
        invalidateSelf();
    }

    public void finishTransitionImmediately() {
        this.mTransitionState = 2;
        for (int i = 0; i < this.mLayers.length; i++) {
            this.mAlphas[i] = this.mIsLayerOn[i] ? 255 : 0;
        }
        invalidateSelf();
    }

    private boolean updateAlphas(float f) {
        boolean z = true;
        for (int i = 0; i < this.mLayers.length; i++) {
            int i2 = this.mIsLayerOn[i] ? 1 : -1;
            int[] iArr = this.mAlphas;
            iArr[i] = (int) (this.mStartAlphas[i] + (i2 * 255 * f));
            if (iArr[i] < 0) {
                iArr[i] = 0;
            }
            int[] iArr2 = this.mAlphas;
            if (iArr2[i] > 255) {
                iArr2[i] = 255;
            }
            if (this.mIsLayerOn[i] && this.mAlphas[i] < 255) {
                z = false;
            }
            if (!this.mIsLayerOn[i] && this.mAlphas[i] > 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.facebook.drawee.drawable.ArrayDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean zUpdateAlphas;
        int i = 0;
        switch (this.mTransitionState) {
            case 0:
                System.arraycopy(this.mAlphas, 0, this.mStartAlphas, 0, this.mLayers.length);
                this.mStartTimeMs = getCurrentTimeMs();
                zUpdateAlphas = updateAlphas(this.mDurationMs == 0 ? 1.0f : 0.0f);
                this.mTransitionState = zUpdateAlphas ? 2 : 1;
                break;
            case 1:
                Preconditions.checkState(this.mDurationMs > 0);
                zUpdateAlphas = updateAlphas((getCurrentTimeMs() - this.mStartTimeMs) / this.mDurationMs);
                this.mTransitionState = zUpdateAlphas ? 2 : 1;
                break;
            case 2:
                zUpdateAlphas = true;
                break;
            default:
                zUpdateAlphas = true;
                break;
        }
        while (true) {
            Drawable[] drawableArr = this.mLayers;
            if (i >= drawableArr.length) {
                if (zUpdateAlphas) {
                    return;
                }
                invalidateSelf();
                return;
            }
            drawDrawableWithAlpha(canvas, drawableArr[i], (this.mAlphas[i] * this.mAlpha) / 255);
            i++;
        }
    }

    private void drawDrawableWithAlpha(Canvas canvas, Drawable drawable, int i) {
        if (drawable == null || i <= 0) {
            return;
        }
        this.mPreventInvalidateCount++;
        drawable.mutate().setAlpha(i);
        this.mPreventInvalidateCount--;
        drawable.draw(canvas);
    }

    @Override // com.facebook.drawee.drawable.ArrayDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.mAlpha != i) {
            this.mAlpha = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    protected long getCurrentTimeMs() {
        return SystemClock.uptimeMillis();
    }
}
