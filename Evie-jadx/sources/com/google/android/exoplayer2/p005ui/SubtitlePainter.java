package com.google.android.exoplayer2.p005ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import android.util.Log;
import com.google.android.exoplayer2.text.CaptionStyleCompat;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
final class SubtitlePainter {
    private boolean applyEmbeddedFontSizes;
    private boolean applyEmbeddedStyles;
    private int backgroundColor;
    private Rect bitmapRect;
    private float bottomPaddingFraction;
    private final float cornerRadius;
    private Bitmap cueBitmap;
    private float cueBitmapHeight;
    private float cueLine;
    private int cueLineAnchor;
    private int cueLineType;
    private float cuePosition;
    private int cuePositionAnchor;
    private float cueSize;
    private CharSequence cueText;
    private Layout.Alignment cueTextAlignment;
    private int edgeColor;
    private int edgeType;
    private int foregroundColor;
    private final RectF lineBounds = new RectF();
    private final float outlineWidth;
    private final Paint paint;
    private int parentBottom;
    private int parentLeft;
    private int parentRight;
    private int parentTop;
    private final float shadowOffset;
    private final float shadowRadius;
    private final float spacingAdd;
    private final float spacingMult;
    private StaticLayout textLayout;
    private int textLeft;
    private int textPaddingX;
    private final TextPaint textPaint;
    private float textSizePx;
    private int textTop;
    private int windowColor;

    public SubtitlePainter(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.spacingAdd = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.spacingMult = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.cornerRadius = fRound;
        this.outlineWidth = fRound;
        this.shadowRadius = fRound;
        this.shadowOffset = fRound;
        this.textPaint = new TextPaint();
        this.textPaint.setAntiAlias(true);
        this.textPaint.setSubpixelText(true);
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
    }

    public void draw(Cue cue, boolean z, boolean z2, CaptionStyleCompat captionStyleCompat, float f, float f2, Canvas canvas, int i, int i2, int i3, int i4) {
        boolean z3 = cue.bitmap == null;
        int i5 = -16777216;
        if (z3) {
            if (TextUtils.isEmpty(cue.text)) {
                return;
            } else {
                i5 = (cue.windowColorSet && z) ? cue.windowColor : captionStyleCompat.windowColor;
            }
        }
        if (areCharSequencesEqual(this.cueText, cue.text) && Util.areEqual(this.cueTextAlignment, cue.textAlignment) && this.cueBitmap == cue.bitmap && this.cueLine == cue.line && this.cueLineType == cue.lineType && Util.areEqual(Integer.valueOf(this.cueLineAnchor), Integer.valueOf(cue.lineAnchor)) && this.cuePosition == cue.position && Util.areEqual(Integer.valueOf(this.cuePositionAnchor), Integer.valueOf(cue.positionAnchor)) && this.cueSize == cue.size && this.cueBitmapHeight == cue.bitmapHeight && this.applyEmbeddedStyles == z && this.applyEmbeddedFontSizes == z2 && this.foregroundColor == captionStyleCompat.foregroundColor && this.backgroundColor == captionStyleCompat.backgroundColor && this.windowColor == i5 && this.edgeType == captionStyleCompat.edgeType && this.edgeColor == captionStyleCompat.edgeColor && Util.areEqual(this.textPaint.getTypeface(), captionStyleCompat.typeface) && this.textSizePx == f && this.bottomPaddingFraction == f2 && this.parentLeft == i && this.parentTop == i2 && this.parentRight == i3 && this.parentBottom == i4) {
            drawLayout(canvas, z3);
            return;
        }
        this.cueText = cue.text;
        this.cueTextAlignment = cue.textAlignment;
        this.cueBitmap = cue.bitmap;
        this.cueLine = cue.line;
        this.cueLineType = cue.lineType;
        this.cueLineAnchor = cue.lineAnchor;
        this.cuePosition = cue.position;
        this.cuePositionAnchor = cue.positionAnchor;
        this.cueSize = cue.size;
        this.cueBitmapHeight = cue.bitmapHeight;
        this.applyEmbeddedStyles = z;
        this.applyEmbeddedFontSizes = z2;
        this.foregroundColor = captionStyleCompat.foregroundColor;
        this.backgroundColor = captionStyleCompat.backgroundColor;
        this.windowColor = i5;
        this.edgeType = captionStyleCompat.edgeType;
        this.edgeColor = captionStyleCompat.edgeColor;
        this.textPaint.setTypeface(captionStyleCompat.typeface);
        this.textSizePx = f;
        this.bottomPaddingFraction = f2;
        this.parentLeft = i;
        this.parentTop = i2;
        this.parentRight = i3;
        this.parentBottom = i4;
        if (z3) {
            setupTextLayout();
        } else {
            setupBitmapLayout();
        }
        drawLayout(canvas, z3);
    }

    private void setupTextLayout() {
        CharSequence string;
        int iMax;
        int iMin;
        int iRound;
        int i = this.parentRight - this.parentLeft;
        int i2 = this.parentBottom - this.parentTop;
        this.textPaint.setTextSize(this.textSizePx);
        int i3 = (int) ((this.textSizePx * 0.125f) + 0.5f);
        int i4 = i3 * 2;
        int i5 = i - i4;
        float f = this.cueSize;
        if (f != Float.MIN_VALUE) {
            i5 = (int) (i5 * f);
        }
        if (i5 <= 0) {
            Log.w("SubtitlePainter", "Skipped drawing subtitle cue (insufficient space)");
            return;
        }
        if (this.applyEmbeddedFontSizes && this.applyEmbeddedStyles) {
            string = this.cueText;
        } else if (!this.applyEmbeddedStyles) {
            string = this.cueText.toString();
        } else {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.cueText);
            int length = spannableStringBuilder.length();
            AbsoluteSizeSpan[] absoluteSizeSpanArr = (AbsoluteSizeSpan[]) spannableStringBuilder.getSpans(0, length, AbsoluteSizeSpan.class);
            RelativeSizeSpan[] relativeSizeSpanArr = (RelativeSizeSpan[]) spannableStringBuilder.getSpans(0, length, RelativeSizeSpan.class);
            for (AbsoluteSizeSpan absoluteSizeSpan : absoluteSizeSpanArr) {
                spannableStringBuilder.removeSpan(absoluteSizeSpan);
            }
            for (RelativeSizeSpan relativeSizeSpan : relativeSizeSpanArr) {
                spannableStringBuilder.removeSpan(relativeSizeSpan);
            }
            string = spannableStringBuilder;
        }
        Layout.Alignment alignment = this.cueTextAlignment;
        if (alignment == null) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        }
        Layout.Alignment alignment2 = alignment;
        this.textLayout = new StaticLayout(string, this.textPaint, i5, alignment2, this.spacingMult, this.spacingAdd, true);
        int height = this.textLayout.getHeight();
        int lineCount = this.textLayout.getLineCount();
        int iMax2 = 0;
        for (int i6 = 0; i6 < lineCount; i6++) {
            iMax2 = Math.max((int) Math.ceil(this.textLayout.getLineWidth(i6)), iMax2);
        }
        if (this.cueSize == Float.MIN_VALUE || iMax2 >= i5) {
            i5 = iMax2;
        }
        int i7 = i5 + i4;
        float f2 = this.cuePosition;
        if (f2 != Float.MIN_VALUE) {
            int iRound2 = Math.round(i * f2) + this.parentLeft;
            int i8 = this.cuePositionAnchor;
            if (i8 == 2) {
                iRound2 -= i7;
            } else if (i8 == 1) {
                iRound2 = ((iRound2 * 2) - i7) / 2;
            }
            iMax = Math.max(iRound2, this.parentLeft);
            iMin = Math.min(i7 + iMax, this.parentRight);
        } else {
            iMax = (i - i7) / 2;
            iMin = iMax + i7;
        }
        int i9 = iMin - iMax;
        if (i9 <= 0) {
            Log.w("SubtitlePainter", "Skipped drawing subtitle cue (invalid horizontal positioning)");
            return;
        }
        float f3 = this.cueLine;
        if (f3 != Float.MIN_VALUE) {
            if (this.cueLineType == 0) {
                iRound = Math.round(i2 * f3) + this.parentTop;
            } else {
                int lineBottom = this.textLayout.getLineBottom(0) - this.textLayout.getLineTop(0);
                float f4 = this.cueLine;
                if (f4 >= 0.0f) {
                    iRound = Math.round(f4 * lineBottom) + this.parentTop;
                } else {
                    iRound = Math.round((f4 + 1.0f) * lineBottom) + this.parentBottom;
                }
            }
            int i10 = this.cueLineAnchor;
            if (i10 == 2) {
                iRound -= height;
            } else if (i10 == 1) {
                iRound = ((iRound * 2) - height) / 2;
            }
            int i11 = iRound + height;
            int i12 = this.parentBottom;
            if (i11 > i12) {
                iRound = i12 - height;
            } else {
                int i13 = this.parentTop;
                if (iRound < i13) {
                    iRound = i13;
                }
            }
        } else {
            iRound = (this.parentBottom - height) - ((int) (i2 * this.bottomPaddingFraction));
        }
        this.textLayout = new StaticLayout(string, this.textPaint, i9, alignment2, this.spacingMult, this.spacingAdd, true);
        this.textLeft = iMax;
        this.textTop = iRound;
        this.textPaddingX = i3;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005b  */
    /* JADX WARN: Code duplicated, block: B:16:0x005e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0060  */
    private void setupBitmapLayout() {
        float f;
        int i;
        float f2;
        int i2 = this.parentRight;
        int i3 = this.parentLeft;
        int i4 = this.parentBottom;
        int i5 = this.parentTop;
        float f3 = i2 - i3;
        float f4 = i3 + (this.cuePosition * f3);
        float f5 = i4 - i5;
        float f6 = i5 + (this.cueLine * f5);
        int iRound = Math.round(f3 * this.cueSize);
        float f7 = this.cueBitmapHeight;
        int iRound2 = f7 != Float.MIN_VALUE ? Math.round(f5 * f7) : Math.round(iRound * (this.cueBitmap.getHeight() / this.cueBitmap.getWidth()));
        int i6 = this.cueLineAnchor;
        if (i6 != 2) {
            if (i6 == 1) {
                f = iRound / 2;
            }
            int iRound3 = Math.round(f4);
            i = this.cuePositionAnchor;
            if (i == 2) {
                if (i == 1) {
                    f2 = iRound2 / 2;
                }
                int iRound4 = Math.round(f6);
                this.bitmapRect = new Rect(iRound3, iRound4, iRound + iRound3, iRound2 + iRound4);
            }
            f2 = iRound2;
            f6 -= f2;
            int iRound5 = Math.round(f6);
            this.bitmapRect = new Rect(iRound3, iRound5, iRound + iRound3, iRound2 + iRound5);
        }
        f = iRound;
        f4 -= f;
        int iRound6 = Math.round(f4);
        i = this.cuePositionAnchor;
        if (i == 2) {
            if (i == 1) {
                f2 = iRound2 / 2;
            }
            int iRound7 = Math.round(f6);
            this.bitmapRect = new Rect(iRound6, iRound7, iRound + iRound6, iRound2 + iRound7);
        }
        f2 = iRound2;
        f6 -= f2;
        int iRound8 = Math.round(f6);
        this.bitmapRect = new Rect(iRound6, iRound8, iRound + iRound6, iRound2 + iRound8);
    }

    private void drawLayout(Canvas canvas, boolean z) {
        if (z) {
            drawTextLayout(canvas);
        } else {
            drawBitmapLayout(canvas);
        }
    }

    private void drawTextLayout(Canvas canvas) {
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.textLeft, this.textTop);
        if (Color.alpha(this.windowColor) > 0) {
            this.paint.setColor(this.windowColor);
            canvas.drawRect(-this.textPaddingX, 0.0f, staticLayout.getWidth() + this.textPaddingX, staticLayout.getHeight(), this.paint);
        }
        if (Color.alpha(this.backgroundColor) > 0) {
            this.paint.setColor(this.backgroundColor);
            float lineTop = staticLayout.getLineTop(0);
            int lineCount = staticLayout.getLineCount();
            float f = lineTop;
            for (int i = 0; i < lineCount; i++) {
                this.lineBounds.left = staticLayout.getLineLeft(i) - this.textPaddingX;
                this.lineBounds.right = staticLayout.getLineRight(i) + this.textPaddingX;
                RectF rectF = this.lineBounds;
                rectF.top = f;
                rectF.bottom = staticLayout.getLineBottom(i);
                f = this.lineBounds.bottom;
                RectF rectF2 = this.lineBounds;
                float f2 = this.cornerRadius;
                canvas.drawRoundRect(rectF2, f2, f2, this.paint);
            }
        }
        int i2 = this.edgeType;
        if (i2 == 1) {
            this.textPaint.setStrokeJoin(Paint.Join.ROUND);
            this.textPaint.setStrokeWidth(this.outlineWidth);
            this.textPaint.setColor(this.edgeColor);
            this.textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout.draw(canvas);
        } else if (i2 == 2) {
            TextPaint textPaint = this.textPaint;
            float f3 = this.shadowRadius;
            float f4 = this.shadowOffset;
            textPaint.setShadowLayer(f3, f4, f4, this.edgeColor);
        } else if (i2 == 3 || i2 == 4) {
            boolean z = this.edgeType == 3;
            int i3 = z ? -1 : this.edgeColor;
            int i4 = z ? this.edgeColor : -1;
            float f5 = this.shadowRadius / 2.0f;
            this.textPaint.setColor(this.foregroundColor);
            this.textPaint.setStyle(Paint.Style.FILL);
            float f6 = -f5;
            this.textPaint.setShadowLayer(this.shadowRadius, f6, f6, i3);
            staticLayout.draw(canvas);
            this.textPaint.setShadowLayer(this.shadowRadius, f5, f5, i4);
        }
        this.textPaint.setColor(this.foregroundColor);
        this.textPaint.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
    }

    private void drawBitmapLayout(Canvas canvas) {
        canvas.drawBitmap(this.cueBitmap, (Rect) null, this.bitmapRect, (Paint) null);
    }

    private static boolean areCharSequencesEqual(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }
}
