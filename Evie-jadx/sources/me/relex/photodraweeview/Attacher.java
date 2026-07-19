package me.relex.photodraweeview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.widget.ScrollerCompat;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.view.DraweeView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class Attacher implements View.OnTouchListener, OnScaleDragGestureListener {
    private FlingRunnable mCurrentFlingRunnable;
    private WeakReference<DraweeView<GenericDraweeHierarchy>> mDraweeView;
    private GestureDetectorCompat mGestureDetector;
    private View.OnLongClickListener mLongClickListener;
    private OnPhotoTapListener mPhotoTapListener;
    private OnScaleChangeListener mScaleChangeListener;
    private ScaleDragDetector mScaleDragDetector;
    private OnViewTapListener mViewTapListener;
    private int mOrientation = 0;
    private final float[] mMatrixValues = new float[9];
    private final RectF mDisplayRect = new RectF();
    private final Interpolator mZoomInterpolator = new AccelerateDecelerateInterpolator();
    private float mMinScale = 1.0f;
    private float mMidScale = 1.75f;
    private float mMaxScale = 3.0f;
    private long mZoomDuration = 200;
    private boolean mBlockParentIntercept = false;
    private boolean mAllowParentInterceptOnEdge = true;
    private int mScrollEdgeX = 2;
    private int mScrollEdgeY = 2;
    private final Matrix mMatrix = new Matrix();
    private int mImageInfoHeight = -1;
    private int mImageInfoWidth = -1;

    public Attacher(DraweeView<GenericDraweeHierarchy> draweeView) {
        this.mDraweeView = new WeakReference<>(draweeView);
        ((GenericDraweeHierarchy) draweeView.getHierarchy()).setActualImageScaleType(ScalingUtils.ScaleType.FIT_CENTER);
        draweeView.setOnTouchListener(this);
        this.mScaleDragDetector = new ScaleDragDetector(draweeView.getContext(), this);
        this.mGestureDetector = new GestureDetectorCompat(draweeView.getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: me.relex.photodraweeview.Attacher.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                super.onLongPress(motionEvent);
                if (Attacher.this.mLongClickListener != null) {
                    Attacher.this.mLongClickListener.onLongClick(Attacher.this.getDraweeView());
                }
            }
        });
        this.mGestureDetector.setOnDoubleTapListener(new DefaultOnDoubleTapListener(this));
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        if (onDoubleTapListener != null) {
            this.mGestureDetector.setOnDoubleTapListener(onDoubleTapListener);
        } else {
            this.mGestureDetector.setOnDoubleTapListener(new DefaultOnDoubleTapListener(this));
        }
    }

    public DraweeView<GenericDraweeHierarchy> getDraweeView() {
        return this.mDraweeView.get();
    }

    public float getMinimumScale() {
        return this.mMinScale;
    }

    public float getMediumScale() {
        return this.mMidScale;
    }

    public float getMaximumScale() {
        return this.mMaxScale;
    }

    public void setMaximumScale(float f) {
        checkZoomLevels(this.mMinScale, this.mMidScale, f);
        this.mMaxScale = f;
    }

    public void setMediumScale(float f) {
        checkZoomLevels(this.mMinScale, f, this.mMaxScale);
        this.mMidScale = f;
    }

    public void setMinimumScale(float f) {
        checkZoomLevels(f, this.mMidScale, this.mMaxScale);
        this.mMinScale = f;
    }

    public float getScale() {
        return (float) Math.sqrt(((float) Math.pow(getMatrixValue(this.mMatrix, 0), 2.0d)) + ((float) Math.pow(getMatrixValue(this.mMatrix, 3), 2.0d)));
    }

    public void setScale(float f) {
        setScale(f, false);
    }

    public void setScale(float f, boolean z) {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null) {
            setScale(f, draweeView.getRight() / 2, draweeView.getBottom() / 2, z);
        }
    }

    public void setScale(float f, float f2, float f3, boolean z) {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView == null || f < this.mMinScale || f > this.mMaxScale) {
            return;
        }
        if (z) {
            draweeView.post(new AnimatedZoomRunnable(getScale(), f, f2, f3));
        } else {
            this.mMatrix.setScale(f, f, f2, f3);
            checkMatrixAndInvalidate();
        }
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }

    public void setZoomTransitionDuration(long j) {
        if (j < 0) {
            j = 200;
        }
        this.mZoomDuration = j;
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.mAllowParentInterceptOnEdge = z;
    }

    public void setOnScaleChangeListener(OnScaleChangeListener onScaleChangeListener) {
        this.mScaleChangeListener = onScaleChangeListener;
    }

    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mLongClickListener = onLongClickListener;
    }

    public void setOnPhotoTapListener(OnPhotoTapListener onPhotoTapListener) {
        this.mPhotoTapListener = onPhotoTapListener;
    }

    public void setOnViewTapListener(OnViewTapListener onViewTapListener) {
        this.mViewTapListener = onViewTapListener;
    }

    public OnPhotoTapListener getOnPhotoTapListener() {
        return this.mPhotoTapListener;
    }

    public OnViewTapListener getOnViewTapListener() {
        return this.mViewTapListener;
    }

    public void update(int i, int i2) {
        this.mImageInfoWidth = i;
        this.mImageInfoHeight = i2;
        updateBaseMatrix();
    }

    private static void checkZoomLevels(float f, float f2, float f3) {
        if (f >= f2) {
            throw new IllegalArgumentException("MinZoom has to be less than MidZoom");
        }
        if (f2 >= f3) {
            throw new IllegalArgumentException("MidZoom has to be less than MaxZoom");
        }
    }

    private int getViewWidth() {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null) {
            return (draweeView.getWidth() - draweeView.getPaddingLeft()) - draweeView.getPaddingRight();
        }
        return 0;
    }

    private int getViewHeight() {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null) {
            return (draweeView.getHeight() - draweeView.getPaddingTop()) - draweeView.getPaddingBottom();
        }
        return 0;
    }

    private float getMatrixValue(Matrix matrix, int i) {
        matrix.getValues(this.mMatrixValues);
        return this.mMatrixValues[i];
    }

    public Matrix getDrawMatrix() {
        return this.mMatrix;
    }

    public RectF getDisplayRect() {
        checkMatrixBounds();
        return getDisplayRect(getDrawMatrix());
    }

    public void checkMatrixAndInvalidate() {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null && checkMatrixBounds()) {
            draweeView.invalidate();
        }
    }

    public boolean checkMatrixBounds() {
        float f;
        RectF displayRect = getDisplayRect(getDrawMatrix());
        if (displayRect == null) {
            return false;
        }
        float fHeight = displayRect.height();
        float fWidth = displayRect.width();
        float viewHeight = getViewHeight();
        float f2 = 0.0f;
        if (fHeight <= viewHeight) {
            f = ((viewHeight - fHeight) / 2.0f) - displayRect.top;
            this.mScrollEdgeY = 2;
        } else if (displayRect.top > 0.0f) {
            f = -displayRect.top;
            this.mScrollEdgeY = 0;
        } else if (displayRect.bottom < viewHeight) {
            f = viewHeight - displayRect.bottom;
            this.mScrollEdgeY = 1;
        } else {
            this.mScrollEdgeY = -1;
            f = 0.0f;
        }
        float viewWidth = getViewWidth();
        if (fWidth <= viewWidth) {
            f2 = ((viewWidth - fWidth) / 2.0f) - displayRect.left;
            this.mScrollEdgeX = 2;
        } else if (displayRect.left > 0.0f) {
            f2 = -displayRect.left;
            this.mScrollEdgeX = 0;
        } else if (displayRect.right < viewWidth) {
            f2 = viewWidth - displayRect.right;
            this.mScrollEdgeX = 1;
        } else {
            this.mScrollEdgeX = -1;
        }
        this.mMatrix.postTranslate(f2, f);
        return true;
    }

    private RectF getDisplayRect(Matrix matrix) {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView == null) {
            return null;
        }
        if (this.mImageInfoWidth == -1 && this.mImageInfoHeight == -1) {
            return null;
        }
        this.mDisplayRect.set(0.0f, 0.0f, this.mImageInfoWidth, this.mImageInfoHeight);
        ((GenericDraweeHierarchy) draweeView.getHierarchy()).getActualImageBounds(this.mDisplayRect);
        matrix.mapRect(this.mDisplayRect);
        return this.mDisplayRect;
    }

    private void updateBaseMatrix() {
        if (this.mImageInfoWidth == -1 && this.mImageInfoHeight == -1) {
            return;
        }
        resetMatrix();
    }

    private void resetMatrix() {
        this.mMatrix.reset();
        checkMatrixBounds();
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView != null) {
            draweeView.invalidate();
        }
    }

    private void checkMinScale() {
        RectF displayRect;
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView == null || getScale() >= this.mMinScale || (displayRect = getDisplayRect()) == null) {
            return;
        }
        draweeView.post(new AnimatedZoomRunnable(getScale(), this.mMinScale, displayRect.centerX(), displayRect.centerY()));
    }

    @Override // me.relex.photodraweeview.OnScaleDragGestureListener
    public void onScale(float f, float f2, float f3) {
        if (getScale() < this.mMaxScale || f < 1.0f) {
            OnScaleChangeListener onScaleChangeListener = this.mScaleChangeListener;
            if (onScaleChangeListener != null) {
                onScaleChangeListener.onScaleChange(f, f2, f3);
            }
            this.mMatrix.postScale(f, f, f2, f3);
            checkMatrixAndInvalidate();
        }
    }

    @Override // me.relex.photodraweeview.OnScaleDragGestureListener
    public void onScaleEnd() {
        checkMinScale();
    }

    @Override // me.relex.photodraweeview.OnScaleDragGestureListener
    public void onDrag(float f, float f2) {
        int i;
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView == null || this.mScaleDragDetector.isScaling()) {
            return;
        }
        this.mMatrix.postTranslate(f, f2);
        checkMatrixAndInvalidate();
        ViewParent parent = draweeView.getParent();
        if (parent == null) {
            return;
        }
        if (this.mAllowParentInterceptOnEdge && !this.mScaleDragDetector.isScaling() && !this.mBlockParentIntercept) {
            if (this.mOrientation == 0 && ((i = this.mScrollEdgeX) == 2 || ((i == 0 && f >= 1.0f) || (this.mScrollEdgeX == 1 && f <= -1.0f)))) {
                parent.requestDisallowInterceptTouchEvent(false);
                return;
            }
            if (this.mOrientation == 1) {
                int i2 = this.mScrollEdgeY;
                if (i2 == 2 || ((i2 == 0 && f2 >= 1.0f) || (this.mScrollEdgeY == 1 && f2 <= -1.0f))) {
                    parent.requestDisallowInterceptTouchEvent(false);
                    return;
                }
                return;
            }
            return;
        }
        parent.requestDisallowInterceptTouchEvent(true);
    }

    @Override // me.relex.photodraweeview.OnScaleDragGestureListener
    public void onFling(float f, float f2, float f3, float f4) {
        DraweeView<GenericDraweeHierarchy> draweeView = getDraweeView();
        if (draweeView == null) {
            return;
        }
        this.mCurrentFlingRunnable = new FlingRunnable(draweeView.getContext());
        this.mCurrentFlingRunnable.fling(getViewWidth(), getViewHeight(), (int) f3, (int) f4);
        draweeView.post(this.mCurrentFlingRunnable);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        ViewParent parent;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        boolean z = false;
        if (actionMasked != 3) {
            switch (actionMasked) {
                case 0:
                    ViewParent parent2 = view.getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    cancelFling();
                    break;
                case 1:
                    parent = view.getParent();
                    if (parent != null) {
                        parent.requestDisallowInterceptTouchEvent(false);
                    }
                    break;
            }
        } else {
            parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(false);
            }
        }
        boolean zIsScaling = this.mScaleDragDetector.isScaling();
        boolean zIsDragging = this.mScaleDragDetector.isDragging();
        boolean zOnTouchEvent = this.mScaleDragDetector.onTouchEvent(motionEvent);
        boolean z2 = (zIsScaling || this.mScaleDragDetector.isScaling()) ? false : true;
        boolean z3 = (zIsDragging || this.mScaleDragDetector.isDragging()) ? false : true;
        if (z2 && z3) {
            z = true;
        }
        this.mBlockParentIntercept = z;
        if (this.mGestureDetector.onTouchEvent(motionEvent)) {
            return true;
        }
        return zOnTouchEvent;
    }

    private class AnimatedZoomRunnable implements Runnable {
        private final float mFocalX;
        private final float mFocalY;
        private final long mStartTime = System.currentTimeMillis();
        private final float mZoomEnd;
        private final float mZoomStart;

        public AnimatedZoomRunnable(float f, float f2, float f3, float f4) {
            this.mFocalX = f3;
            this.mFocalY = f4;
            this.mZoomStart = f;
            this.mZoomEnd = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            DraweeView<GenericDraweeHierarchy> draweeView = Attacher.this.getDraweeView();
            if (draweeView == null) {
                return;
            }
            float fInterpolate = interpolate();
            float f = this.mZoomStart;
            Attacher.this.onScale((f + ((this.mZoomEnd - f) * fInterpolate)) / Attacher.this.getScale(), this.mFocalX, this.mFocalY);
            if (fInterpolate < 1.0f) {
                Attacher.this.postOnAnimation(draweeView, this);
            }
        }

        private float interpolate() {
            return Attacher.this.mZoomInterpolator.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.mStartTime) * 1.0f) / Attacher.this.mZoomDuration));
        }
    }

    private class FlingRunnable implements Runnable {
        private int mCurrentX;
        private int mCurrentY;
        private final ScrollerCompat mScroller;

        public FlingRunnable(Context context) {
            this.mScroller = ScrollerCompat.create(context);
        }

        public void cancelFling() {
            this.mScroller.abortAnimation();
        }

        public void fling(int i, int i2, int i3, int i4) {
            int i5;
            int iRound;
            int i6;
            int iRound2;
            RectF displayRect = Attacher.this.getDisplayRect();
            if (displayRect == null) {
                return;
            }
            int iRound3 = Math.round(-displayRect.left);
            float f = i;
            if (f < displayRect.width()) {
                iRound = Math.round(displayRect.width() - f);
                i5 = 0;
            } else {
                i5 = iRound3;
                iRound = i5;
            }
            int iRound4 = Math.round(-displayRect.top);
            float f2 = i2;
            if (f2 < displayRect.height()) {
                iRound2 = Math.round(displayRect.height() - f2);
                i6 = 0;
            } else {
                i6 = iRound4;
                iRound2 = i6;
            }
            this.mCurrentX = iRound3;
            this.mCurrentY = iRound4;
            if (iRound3 == iRound && iRound4 == iRound2) {
                return;
            }
            this.mScroller.fling(iRound3, iRound4, i3, i4, i5, iRound, i6, iRound2, 0, 0);
        }

        @Override // java.lang.Runnable
        public void run() {
            DraweeView<GenericDraweeHierarchy> draweeView;
            if (this.mScroller.isFinished() || (draweeView = Attacher.this.getDraweeView()) == null || !this.mScroller.computeScrollOffset()) {
                return;
            }
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            Attacher.this.mMatrix.postTranslate(this.mCurrentX - currX, this.mCurrentY - currY);
            draweeView.invalidate();
            this.mCurrentX = currX;
            this.mCurrentY = currY;
            Attacher.this.postOnAnimation(draweeView, this);
        }
    }

    private void cancelFling() {
        FlingRunnable flingRunnable = this.mCurrentFlingRunnable;
        if (flingRunnable != null) {
            flingRunnable.cancelFling();
            this.mCurrentFlingRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOnAnimation(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    protected void onDetachedFromWindow() {
        cancelFling();
    }
}
