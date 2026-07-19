package com.facebook.drawee.debug;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.drawee.drawable.ScalingUtils;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class DebugControllerOverlayDrawable extends Drawable {
    private String mControllerId;
    private int mCurrentTextXPx;
    private int mCurrentTextYPx;
    private int mFrameCount;
    private int mHeightPx;
    private String mImageFormat;
    private int mImageSizeBytes;
    private int mLineIncrementPx;
    private int mLoopCount;
    private ScalingUtils.ScaleType mScaleType;
    private int mStartTextXPx;
    private int mStartTextYPx;
    private int mWidthPx;
    private int mTextGravity = 80;
    private final Paint mPaint = new Paint(1);
    private final Matrix mMatrix = new Matrix();
    private final Rect mRect = new Rect();
    private final RectF mRectF = new RectF();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public DebugControllerOverlayDrawable() {
        reset();
    }

    public void reset() {
        this.mWidthPx = -1;
        this.mHeightPx = -1;
        this.mImageSizeBytes = -1;
        this.mFrameCount = -1;
        this.mLoopCount = -1;
        this.mImageFormat = null;
        setControllerId(null);
        invalidateSelf();
    }

    public void setControllerId(@Nullable String str) {
        if (str == null) {
            str = "none";
        }
        this.mControllerId = str;
        invalidateSelf();
    }

    public void setDimensions(int i, int i2) {
        this.mWidthPx = i;
        this.mHeightPx = i2;
        invalidateSelf();
    }

    public void setImageSize(int i) {
        this.mImageSizeBytes = i;
    }

    public void setScaleType(ScalingUtils.ScaleType scaleType) {
        this.mScaleType = scaleType;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        prepareDebugTextParameters(rect, 7, 7);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(2.0f);
        this.mPaint.setColor(-26624);
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.mPaint);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(determineOverlayColor(this.mWidthPx, this.mHeightPx, this.mScaleType));
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.mPaint);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeWidth(0.0f);
        this.mPaint.setColor(-1);
        this.mCurrentTextXPx = this.mStartTextXPx;
        this.mCurrentTextYPx = this.mStartTextYPx;
        addDebugText(canvas, "ID: %s", this.mControllerId);
        addDebugText(canvas, "D: %dx%d", Integer.valueOf(bounds.width()), Integer.valueOf(bounds.height()));
        addDebugText(canvas, "I: %dx%d", Integer.valueOf(this.mWidthPx), Integer.valueOf(this.mHeightPx));
        addDebugText(canvas, "I: %d KiB", Integer.valueOf(this.mImageSizeBytes / 1024));
        String str = this.mImageFormat;
        if (str != null) {
            addDebugText(canvas, "i format: %s", str);
        }
        int i = this.mFrameCount;
        if (i > 0) {
            addDebugText(canvas, "anim: f %d, l %d", Integer.valueOf(i), Integer.valueOf(this.mLoopCount));
        }
        ScalingUtils.ScaleType scaleType = this.mScaleType;
        if (scaleType != null) {
            addDebugText(canvas, "scale: %s", scaleType);
        }
    }

    private void prepareDebugTextParameters(Rect rect, int i, int i2) {
        int iMin = Math.min(40, Math.max(12, Math.min(rect.width() / i2, rect.height() / i)));
        this.mPaint.setTextSize(iMin);
        this.mLineIncrementPx = iMin + 8;
        if (this.mTextGravity == 80) {
            this.mLineIncrementPx *= -1;
        }
        this.mStartTextXPx = rect.left + 10;
        this.mStartTextYPx = this.mTextGravity == 80 ? rect.bottom - 10 : rect.top + 10 + 12;
    }

    private void addDebugText(Canvas canvas, String str, @Nullable Object... objArr) {
        if (objArr == null) {
            canvas.drawText(str, this.mCurrentTextXPx, this.mCurrentTextYPx, this.mPaint);
        } else {
            canvas.drawText(String.format(str, objArr), this.mCurrentTextXPx, this.mCurrentTextYPx, this.mPaint);
        }
        this.mCurrentTextYPx += this.mLineIncrementPx;
    }

    int determineOverlayColor(int i, int i2, @Nullable ScalingUtils.ScaleType scaleType) {
        int iWidth = getBounds().width();
        int iHeight = getBounds().height();
        if (iWidth <= 0 || iHeight <= 0 || i <= 0 || i2 <= 0) {
            return 1727284022;
        }
        if (scaleType != null) {
            Rect rect = this.mRect;
            rect.top = 0;
            rect.left = 0;
            rect.right = iWidth;
            rect.bottom = iHeight;
            this.mMatrix.reset();
            scaleType.getTransform(this.mMatrix, this.mRect, i, i2, 0.0f, 0.0f);
            RectF rectF = this.mRectF;
            rectF.top = 0.0f;
            rectF.left = 0.0f;
            rectF.right = i;
            rectF.bottom = i2;
            this.mMatrix.mapRect(rectF);
            int iWidth2 = (int) this.mRectF.width();
            int iHeight2 = (int) this.mRectF.height();
            iWidth = Math.min(iWidth, iWidth2);
            iHeight = Math.min(iHeight, iHeight2);
        }
        float f = iWidth;
        float f2 = f * 0.1f;
        float f3 = f * 0.5f;
        float f4 = iHeight;
        float f5 = 0.1f * f4;
        float f6 = f4 * 0.5f;
        int iAbs = Math.abs(i - iWidth);
        int iAbs2 = Math.abs(i2 - iHeight);
        float f7 = iAbs;
        if (f7 >= f2 || iAbs2 >= f5) {
            return (f7 >= f3 || ((float) iAbs2) >= f6) ? 1727284022 : 1728026624;
        }
        return 1716301648;
    }
}
