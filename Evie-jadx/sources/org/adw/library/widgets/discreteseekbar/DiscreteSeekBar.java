package org.adw.library.widgets.discreteseekbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.util.Formatter;
import java.util.Locale;
import org.adw.library.widgets.discreteseekbar.internal.PopupIndicator;
import org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat;
import org.adw.library.widgets.discreteseekbar.internal.compat.SeekBarCompat;
import org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable;
import org.adw.library.widgets.discreteseekbar.internal.drawable.ThumbDrawable;
import org.adw.library.widgets.discreteseekbar.internal.drawable.TrackRectDrawable;

/* JADX INFO: loaded from: classes2.dex */
public class DiscreteSeekBar extends View {
    private static final boolean isLollipopOrGreater;
    private int mAddedTouchBounds;
    private boolean mAllowTrackClick;
    private float mAnimationPosition;
    private int mAnimationTarget;
    private float mDownX;
    private int mDragOffset;
    private MarkerDrawable.MarkerAnimationListener mFloaterListener;
    private StringBuilder mFormatBuilder;
    Formatter mFormatter;
    private PopupIndicator mIndicator;
    private String mIndicatorFormatter;
    private boolean mIndicatorPopupEnabled;
    private Rect mInvalidateRect;
    private boolean mIsDragging;
    private int mKeyProgressIncrement;
    private int mMax;
    private int mMin;
    private boolean mMirrorForRtl;
    private NumericTransformer mNumericTransformer;
    private AnimatorCompat mPositionAnimator;
    private OnProgressChangeListener mPublicChangeListener;
    private Drawable mRipple;
    private TrackRectDrawable mScrubber;
    private int mScrubberHeight;
    private Runnable mShowIndicatorRunnable;
    private Rect mTempRect;
    private ThumbDrawable mThumb;
    private float mTouchSlop;
    private TrackRectDrawable mTrack;
    private int mTrackHeight;
    private int mValue;

    public interface OnProgressChangeListener {
        void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z);

        void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar);

        void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar);
    }

    protected void onHideBubble() {
    }

    protected void onShowBubble() {
    }

    protected void onValueChanged(int i) {
    }

    public static abstract class NumericTransformer {
        public abstract int transform(int i);

        public boolean useStringTransform() {
            return false;
        }

        public String transformToString(int i) {
            return String.valueOf(i);
        }
    }

    private static class DefaultNumericTransformer extends NumericTransformer {
        @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.NumericTransformer
        public int transform(int i) {
            return i;
        }

        private DefaultNumericTransformer() {
        }
    }

    static {
        isLollipopOrGreater = Build.VERSION.SDK_INT >= 21;
    }

    public DiscreteSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.discreteSeekBarStyle);
    }

    public DiscreteSeekBar(Context context, AttributeSet attributeSet, int i) {
        int integer;
        int integer2;
        super(context, attributeSet, i);
        this.mKeyProgressIncrement = 1;
        this.mMirrorForRtl = false;
        this.mAllowTrackClick = true;
        this.mIndicatorPopupEnabled = true;
        this.mInvalidateRect = new Rect();
        this.mTempRect = new Rect();
        this.mShowIndicatorRunnable = new Runnable() { // from class: org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.2
            @Override // java.lang.Runnable
            public void run() {
                DiscreteSeekBar.this.showFloater();
            }
        };
        this.mFloaterListener = new MarkerDrawable.MarkerAnimationListener() { // from class: org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.3
            @Override // org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable.MarkerAnimationListener
            public void onOpeningComplete() {
            }

            @Override // org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable.MarkerAnimationListener
            public void onClosingComplete() {
                DiscreteSeekBar.this.mThumb.animateToNormal();
            }
        };
        setFocusable(true);
        setWillNotDraw(false);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        float f = context.getResources().getDisplayMetrics().density;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DiscreteSeekBar, i, R.style.Widget_DiscreteSeekBar);
        this.mMirrorForRtl = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DiscreteSeekBar_dsb_mirrorForRtl, this.mMirrorForRtl);
        this.mAllowTrackClick = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DiscreteSeekBar_dsb_allowTrackClickToDrag, this.mAllowTrackClick);
        this.mIndicatorPopupEnabled = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DiscreteSeekBar_dsb_indicatorPopupEnabled, this.mIndicatorPopupEnabled);
        this.mTrackHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DiscreteSeekBar_dsb_trackHeight, (int) (1.0f * f));
        this.mScrubberHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DiscreteSeekBar_dsb_scrubberHeight, (int) (4.0f * f));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DiscreteSeekBar_dsb_thumbSize, (int) (12.0f * f));
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DiscreteSeekBar_dsb_indicatorSeparation, (int) (5.0f * f));
        this.mAddedTouchBounds = Math.max(0, (((int) (f * 32.0f)) - dimensionPixelSize) / 2);
        int i2 = R.styleable.DiscreteSeekBar_dsb_max;
        int i3 = R.styleable.DiscreteSeekBar_dsb_min;
        int i4 = R.styleable.DiscreteSeekBar_dsb_value;
        TypedValue typedValue = new TypedValue();
        int integer3 = 100;
        if (typedArrayObtainStyledAttributes.getValue(i2, typedValue)) {
            if (typedValue.type == 5) {
                integer3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(i2, 100);
            } else {
                integer3 = typedArrayObtainStyledAttributes.getInteger(i2, 100);
            }
        }
        if (!typedArrayObtainStyledAttributes.getValue(i3, typedValue)) {
            integer = 0;
        } else if (typedValue.type == 5) {
            integer = typedArrayObtainStyledAttributes.getDimensionPixelSize(i3, 0);
        } else {
            integer = typedArrayObtainStyledAttributes.getInteger(i3, 0);
        }
        if (!typedArrayObtainStyledAttributes.getValue(i4, typedValue)) {
            integer2 = 0;
        } else if (typedValue.type == 5) {
            integer2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(i4, 0);
        } else {
            integer2 = typedArrayObtainStyledAttributes.getInteger(i4, 0);
        }
        this.mMin = integer;
        this.mMax = Math.max(integer + 1, integer3);
        this.mValue = Math.max(integer, Math.min(integer3, integer2));
        updateKeyboardRange();
        this.mIndicatorFormatter = typedArrayObtainStyledAttributes.getString(R.styleable.DiscreteSeekBar_dsb_indicatorFormatter);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.DiscreteSeekBar_dsb_trackColor);
        ColorStateList colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.DiscreteSeekBar_dsb_progressColor);
        ColorStateList colorStateList3 = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.DiscreteSeekBar_dsb_rippleColor);
        boolean zIsInEditMode = isInEditMode();
        colorStateList3 = (zIsInEditMode || colorStateList3 == null) ? new ColorStateList(new int[][]{new int[0]}, new int[]{-12303292}) : colorStateList3;
        colorStateList = (zIsInEditMode || colorStateList == null) ? new ColorStateList(new int[][]{new int[0]}, new int[]{-7829368}) : colorStateList;
        colorStateList2 = (zIsInEditMode || colorStateList2 == null) ? new ColorStateList(new int[][]{new int[0]}, new int[]{-16738680}) : colorStateList2;
        this.mRipple = SeekBarCompat.getRipple(colorStateList3);
        if (isLollipopOrGreater) {
            SeekBarCompat.setBackground(this, this.mRipple);
        } else {
            this.mRipple.setCallback(this);
        }
        this.mTrack = new TrackRectDrawable(colorStateList);
        this.mTrack.setCallback(this);
        this.mScrubber = new TrackRectDrawable(colorStateList2);
        this.mScrubber.setCallback(this);
        this.mThumb = new ThumbDrawable(colorStateList2, dimensionPixelSize);
        this.mThumb.setCallback(this);
        ThumbDrawable thumbDrawable = this.mThumb;
        thumbDrawable.setBounds(0, 0, thumbDrawable.getIntrinsicWidth(), this.mThumb.getIntrinsicHeight());
        if (!zIsInEditMode) {
            this.mIndicator = new PopupIndicator(context, attributeSet, i, convertValueToMessage(this.mMax), dimensionPixelSize, this.mAddedTouchBounds + dimensionPixelSize + dimensionPixelSize2);
            this.mIndicator.setListener(this.mFloaterListener);
        }
        typedArrayObtainStyledAttributes.recycle();
        setNumericTransformer(new DefaultNumericTransformer());
    }

    public void setIndicatorFormatter(String str) {
        this.mIndicatorFormatter = str;
        updateProgressMessage(this.mValue);
    }

    public void setNumericTransformer(NumericTransformer numericTransformer) {
        if (numericTransformer == null) {
            numericTransformer = new DefaultNumericTransformer();
        }
        this.mNumericTransformer = numericTransformer;
        updateIndicatorSizes();
        updateProgressMessage(this.mValue);
    }

    public NumericTransformer getNumericTransformer() {
        return this.mNumericTransformer;
    }

    public void setMax(int i) {
        this.mMax = i;
        int i2 = this.mMax;
        if (i2 < this.mMin) {
            setMin(i2 - 1);
        }
        updateKeyboardRange();
        int i3 = this.mValue;
        if (i3 < this.mMin || i3 > this.mMax) {
            setProgress(this.mMin);
        } else {
            updateThumbPosFromCurrentProgress();
        }
        updateIndicatorSizes();
        updateThumbPosFromCurrentProgress();
    }

    public int getMax() {
        return this.mMax;
    }

    public void setMin(int i) {
        this.mMin = i;
        int i2 = this.mMin;
        if (i2 > this.mMax) {
            setMax(i2 + 1);
        }
        updateKeyboardRange();
        int i3 = this.mValue;
        if (i3 < this.mMin || i3 > this.mMax) {
            setProgress(this.mMin);
        } else {
            updateThumbPosFromCurrentProgress();
        }
        updateIndicatorSizes();
        updateThumbPosFromCurrentProgress();
    }

    public int getMin() {
        return this.mMin;
    }

    public void setProgress(int i) {
        setProgress(i, false);
    }

    private void setProgress(int i, boolean z) {
        int iMax = Math.max(this.mMin, Math.min(this.mMax, i));
        if (isAnimationRunning()) {
            this.mPositionAnimator.cancel();
        }
        if (this.mValue != iMax) {
            this.mValue = iMax;
            notifyProgress(iMax, z);
            updateProgressMessage(iMax);
            updateThumbPosFromCurrentProgress();
        }
    }

    public int getProgress() {
        return this.mValue;
    }

    public void setOnProgressChangeListener(OnProgressChangeListener onProgressChangeListener) {
        this.mPublicChangeListener = onProgressChangeListener;
    }

    public void setThumbColor(int i, int i2) {
        this.mThumb.setColorStateList(ColorStateList.valueOf(i));
        this.mIndicator.setColors(i2, i);
    }

    public void setScrubberColor(int i) {
        this.mScrubber.setColorStateList(ColorStateList.valueOf(i));
    }

    public void setScrubberColor(ColorStateList colorStateList) {
        this.mScrubber.setColorStateList(colorStateList);
    }

    public void setRippleColor(int i) {
        setRippleColor(new ColorStateList(new int[][]{new int[0]}, new int[]{i}));
    }

    public void setRippleColor(ColorStateList colorStateList) {
        SeekBarCompat.setRippleColor(this.mRipple, colorStateList);
    }

    public void setTrackColor(int i) {
        this.mTrack.setColorStateList(ColorStateList.valueOf(i));
    }

    public void setTrackColor(ColorStateList colorStateList) {
        this.mTrack.setColorStateList(colorStateList);
    }

    public void setIndicatorPopupEnabled(boolean z) {
        this.mIndicatorPopupEnabled = z;
    }

    private void updateIndicatorSizes() {
        if (isInEditMode()) {
            return;
        }
        if (this.mNumericTransformer.useStringTransform()) {
            this.mIndicator.updateSizes(this.mNumericTransformer.transformToString(this.mMax));
        } else {
            this.mIndicator.updateSizes(convertValueToMessage(this.mNumericTransformer.transform(this.mMax)));
        }
    }

    private void notifyProgress(int i, boolean z) {
        OnProgressChangeListener onProgressChangeListener = this.mPublicChangeListener;
        if (onProgressChangeListener != null) {
            onProgressChangeListener.onProgressChanged(this, i, z);
        }
        onValueChanged(i);
    }

    private void notifyBubble(boolean z) {
        if (z) {
            onShowBubble();
        } else {
            onHideBubble();
        }
    }

    private void updateKeyboardRange() {
        int i = this.mMax - this.mMin;
        int i2 = this.mKeyProgressIncrement;
        if (i2 == 0 || i / i2 > 20) {
            this.mKeyProgressIncrement = Math.max(1, Math.round(i / 20.0f));
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), this.mThumb.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom() + (this.mAddedTouchBounds * 2));
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            removeCallbacks(this.mShowIndicatorRunnable);
            if (!isInEditMode()) {
                this.mIndicator.dismissComplete();
            }
            updateFromDrawableState();
        }
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int intrinsicWidth = this.mThumb.getIntrinsicWidth();
        int intrinsicHeight = this.mThumb.getIntrinsicHeight();
        int i5 = this.mAddedTouchBounds;
        int i6 = intrinsicWidth / 2;
        int paddingLeft = getPaddingLeft() + i5;
        int paddingRight = getPaddingRight();
        int height = (getHeight() - getPaddingBottom()) - i5;
        this.mThumb.setBounds(paddingLeft, height - intrinsicHeight, intrinsicWidth + paddingLeft, height);
        int iMax = Math.max(this.mTrackHeight / 2, 1);
        int i7 = paddingLeft + i6;
        int i8 = height - i6;
        this.mTrack.setBounds(i7, i8 - iMax, ((getWidth() - i6) - paddingRight) - i5, iMax + i8);
        int iMax2 = Math.max(this.mScrubberHeight / 2, 2);
        this.mScrubber.setBounds(i7, i8 - iMax2, i7, i8 + iMax2);
        updateThumbPosFromCurrentProgress();
    }

    @Override // android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        if (!isLollipopOrGreater) {
            this.mRipple.draw(canvas);
        }
        super.onDraw(canvas);
        this.mTrack.draw(canvas);
        this.mScrubber.draw(canvas);
        this.mThumb.draw(canvas);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        updateFromDrawableState();
    }

    private void updateFromDrawableState() {
        int[] drawableState = getDrawableState();
        boolean z = false;
        boolean z2 = false;
        for (int i : drawableState) {
            if (i == 16842908) {
                z = true;
            } else if (i == 16842919) {
                z2 = true;
            }
        }
        if (isEnabled() && ((z || z2) && this.mIndicatorPopupEnabled)) {
            removeCallbacks(this.mShowIndicatorRunnable);
            postDelayed(this.mShowIndicatorRunnable, 150L);
        } else {
            hideFloater();
        }
        this.mThumb.setState(drawableState);
        this.mTrack.setState(drawableState);
        this.mScrubber.setState(drawableState);
        this.mRipple.setState(drawableState);
    }

    private void updateProgressMessage(int i) {
        if (isInEditMode()) {
            return;
        }
        if (this.mNumericTransformer.useStringTransform()) {
            this.mIndicator.setValue(this.mNumericTransformer.transformToString(i));
        } else {
            this.mIndicator.setValue(convertValueToMessage(this.mNumericTransformer.transform(i)));
        }
    }

    private String convertValueToMessage(int i) {
        String str = this.mIndicatorFormatter;
        if (str == null) {
            str = "%d";
        }
        Formatter formatter = this.mFormatter;
        if (formatter == null || !formatter.locale().equals(Locale.getDefault())) {
            int length = str.length() + String.valueOf(this.mMax).length();
            StringBuilder sb = this.mFormatBuilder;
            if (sb == null) {
                this.mFormatBuilder = new StringBuilder(length);
            } else {
                sb.ensureCapacity(length);
            }
            this.mFormatter = new Formatter(this.mFormatBuilder, Locale.getDefault());
        } else {
            this.mFormatBuilder.setLength(0);
        }
        return this.mFormatter.format(str, Integer.valueOf(i)).toString();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        switch (MotionEventCompat.getActionMasked(motionEvent)) {
            case 0:
                this.mDownX = motionEvent.getX();
                startDragging(motionEvent, isInScrollingContainer());
                return true;
            case 1:
                if (!isDragging() && this.mAllowTrackClick) {
                    startDragging(motionEvent, false);
                    updateDragging(motionEvent);
                }
                stopDragging();
                return true;
            case 2:
                if (isDragging()) {
                    updateDragging(motionEvent);
                    return true;
                }
                if (Math.abs(motionEvent.getX() - this.mDownX) <= this.mTouchSlop) {
                    return true;
                }
                startDragging(motionEvent, false);
                return true;
            case 3:
                stopDragging();
                return true;
            default:
                return true;
        }
    }

    private boolean isInScrollingContainer() {
        return SeekBarCompat.isInScrollingContainer(getParent());
    }

    private boolean startDragging(MotionEvent motionEvent, boolean z) {
        Rect rect = this.mTempRect;
        this.mThumb.copyBounds(rect);
        int i = this.mAddedTouchBounds;
        rect.inset(-i, -i);
        this.mIsDragging = rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        if (!this.mIsDragging && this.mAllowTrackClick && !z) {
            this.mIsDragging = true;
            this.mDragOffset = (rect.width() / 2) - this.mAddedTouchBounds;
            updateDragging(motionEvent);
            this.mThumb.copyBounds(rect);
            int i2 = this.mAddedTouchBounds;
            rect.inset(-i2, -i2);
        }
        if (this.mIsDragging) {
            setPressed(true);
            attemptClaimDrag();
            setHotspot(motionEvent.getX(), motionEvent.getY());
            this.mDragOffset = (int) ((motionEvent.getX() - rect.left) - this.mAddedTouchBounds);
            OnProgressChangeListener onProgressChangeListener = this.mPublicChangeListener;
            if (onProgressChangeListener != null) {
                onProgressChangeListener.onStartTrackingTouch(this);
            }
        }
        return this.mIsDragging;
    }

    private boolean isDragging() {
        return this.mIsDragging;
    }

    private void stopDragging() {
        OnProgressChangeListener onProgressChangeListener = this.mPublicChangeListener;
        if (onProgressChangeListener != null) {
            onProgressChangeListener.onStopTrackingTouch(this);
        }
        this.mIsDragging = false;
        setPressed(false);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0029  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z;
        if (isEnabled()) {
            int animatedProgress = getAnimatedProgress();
            switch (i) {
                case 21:
                    if (animatedProgress > this.mMin) {
                        animateSetProgress(animatedProgress - this.mKeyProgressIncrement);
                    }
                    z = true;
                    break;
                case 22:
                    if (animatedProgress < this.mMax) {
                        animateSetProgress(animatedProgress + this.mKeyProgressIncrement);
                    }
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
        } else {
            z = false;
        }
        return z || super.onKeyDown(i, keyEvent);
    }

    private int getAnimatedProgress() {
        return isAnimationRunning() ? getAnimationTarget() : this.mValue;
    }

    boolean isAnimationRunning() {
        AnimatorCompat animatorCompat = this.mPositionAnimator;
        return animatorCompat != null && animatorCompat.isRunning();
    }

    void animateSetProgress(int i) {
        float animationPosition = isAnimationRunning() ? getAnimationPosition() : getProgress();
        int i2 = this.mMin;
        if (i >= i2 && i <= (i2 = this.mMax)) {
            i2 = i;
        }
        AnimatorCompat animatorCompat = this.mPositionAnimator;
        if (animatorCompat != null) {
            animatorCompat.cancel();
        }
        this.mAnimationTarget = i2;
        this.mPositionAnimator = AnimatorCompat.create(animationPosition, i2, new AnimatorCompat.AnimationFrameUpdateListener() { // from class: org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.1
            @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat.AnimationFrameUpdateListener
            public void onAnimationFrame(float f) {
                DiscreteSeekBar.this.setAnimationPosition(f);
            }
        });
        this.mPositionAnimator.setDuration(250);
        this.mPositionAnimator.start();
    }

    private int getAnimationTarget() {
        return this.mAnimationTarget;
    }

    void setAnimationPosition(float f) {
        this.mAnimationPosition = f;
        int i = this.mMin;
        updateProgressFromAnimation((f - i) / (this.mMax - i));
    }

    float getAnimationPosition() {
        return this.mAnimationPosition;
    }

    private void updateDragging(MotionEvent motionEvent) {
        setHotspot(motionEvent.getX(), motionEvent.getY());
        int x = (int) motionEvent.getX();
        int iWidth = this.mThumb.getBounds().width() / 2;
        int i = this.mAddedTouchBounds;
        int i2 = (x - this.mDragOffset) + iWidth;
        int paddingLeft = getPaddingLeft() + iWidth + i;
        int width = getWidth() - ((getPaddingRight() + iWidth) + i);
        if (i2 < paddingLeft) {
            i2 = paddingLeft;
        } else if (i2 > width) {
            i2 = width;
        }
        float f = (i2 - paddingLeft) / (width - paddingLeft);
        if (isRtl()) {
            f = 1.0f - f;
        }
        int i3 = this.mMax;
        int i4 = this.mMin;
        setProgress(Math.round((f * (i3 - i4)) + i4), true);
    }

    private void updateProgressFromAnimation(float f) {
        int iWidth = this.mThumb.getBounds().width() / 2;
        int i = this.mAddedTouchBounds;
        int width = (getWidth() - ((getPaddingRight() + iWidth) + i)) - ((getPaddingLeft() + iWidth) + i);
        int i2 = this.mMax;
        int i3 = this.mMin;
        int iRound = Math.round(((i2 - i3) * f) + i3);
        if (iRound != getProgress()) {
            this.mValue = iRound;
            notifyProgress(this.mValue, true);
            updateProgressMessage(iRound);
        }
        updateThumbPos((int) ((f * width) + 0.5f));
    }

    private void updateThumbPosFromCurrentProgress() {
        int intrinsicWidth = this.mThumb.getIntrinsicWidth();
        int i = this.mAddedTouchBounds;
        int i2 = intrinsicWidth / 2;
        int i3 = this.mValue;
        int i4 = this.mMin;
        updateThumbPos((int) ((((i3 - i4) / (this.mMax - i4)) * ((getWidth() - ((getPaddingRight() + i2) + i)) - ((getPaddingLeft() + i2) + i))) + 0.5f));
    }

    private void updateThumbPos(int i) {
        int paddingLeft;
        int i2;
        int intrinsicWidth = this.mThumb.getIntrinsicWidth();
        int i3 = intrinsicWidth / 2;
        if (isRtl()) {
            paddingLeft = (getWidth() - getPaddingRight()) - this.mAddedTouchBounds;
            i2 = (paddingLeft - i) - intrinsicWidth;
        } else {
            paddingLeft = getPaddingLeft() + this.mAddedTouchBounds;
            i2 = i + paddingLeft;
        }
        this.mThumb.copyBounds(this.mInvalidateRect);
        this.mThumb.setBounds(i2, this.mInvalidateRect.top, intrinsicWidth + i2, this.mInvalidateRect.bottom);
        if (isRtl()) {
            this.mScrubber.getBounds().right = paddingLeft - i3;
            this.mScrubber.getBounds().left = i2 + i3;
        } else {
            this.mScrubber.getBounds().left = paddingLeft + i3;
            this.mScrubber.getBounds().right = i2 + i3;
        }
        Rect rect = this.mTempRect;
        this.mThumb.copyBounds(rect);
        if (!isInEditMode()) {
            this.mIndicator.move(rect.centerX());
        }
        Rect rect2 = this.mInvalidateRect;
        int i4 = this.mAddedTouchBounds;
        rect2.inset(-i4, -i4);
        int i5 = this.mAddedTouchBounds;
        rect.inset(-i5, -i5);
        this.mInvalidateRect.union(rect);
        SeekBarCompat.setHotspotBounds(this.mRipple, rect.left, rect.top, rect.right, rect.bottom);
        invalidate(this.mInvalidateRect);
    }

    private void setHotspot(float f, float f2) {
        DrawableCompat.setHotspot(this.mRipple, f, f2);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mThumb || drawable == this.mTrack || drawable == this.mScrubber || drawable == this.mRipple || super.verifyDrawable(drawable);
    }

    private void attemptClaimDrag() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFloater() {
        if (isInEditMode()) {
            return;
        }
        this.mThumb.animateToPressed();
        this.mIndicator.showIndicator(this, this.mThumb.getBounds());
        notifyBubble(true);
    }

    private void hideFloater() {
        removeCallbacks(this.mShowIndicatorRunnable);
        if (isInEditMode()) {
            return;
        }
        this.mIndicator.dismiss();
        notifyBubble(false);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mShowIndicatorRunnable);
        if (isInEditMode()) {
            return;
        }
        this.mIndicator.dismissComplete();
    }

    public boolean isRtl() {
        return ViewCompat.getLayoutDirection(this) == 1 && this.mMirrorForRtl;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        CustomState customState = new CustomState(super.onSaveInstanceState());
        customState.progress = getProgress();
        customState.max = this.mMax;
        customState.min = this.mMin;
        return customState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(CustomState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        CustomState customState = (CustomState) parcelable;
        setMin(customState.min);
        setMax(customState.max);
        setProgress(customState.progress, false);
        super.onRestoreInstanceState(customState.getSuperState());
    }

    static class CustomState extends View.BaseSavedState {
        public static final Parcelable.Creator<CustomState> CREATOR = new Parcelable.Creator<CustomState>() { // from class: org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.CustomState.1
            @Override // android.os.Parcelable.Creator
            public CustomState[] newArray(int i) {
                return new CustomState[i];
            }

            @Override // android.os.Parcelable.Creator
            public CustomState createFromParcel(Parcel parcel) {
                return new CustomState(parcel);
            }
        };
        private int max;
        private int min;
        private int progress;

        public CustomState(Parcel parcel) {
            super(parcel);
            this.progress = parcel.readInt();
            this.max = parcel.readInt();
            this.min = parcel.readInt();
        }

        public CustomState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.progress);
            parcel.writeInt(this.max);
            parcel.writeInt(this.min);
        }
    }
}
