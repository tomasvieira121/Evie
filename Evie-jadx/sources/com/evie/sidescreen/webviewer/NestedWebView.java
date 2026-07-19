package com.evie.sidescreen.webviewer;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;

/* JADX INFO: loaded from: classes.dex */
public class NestedWebView extends WebView implements NestedScrollingChild {
    private int mActivePointerId;
    private NestedScrollingChildHelper mChildHelper;
    private int mLastY;
    private int mNestedOffsetY;
    private final int[] mScrollConsumed;
    private final int[] mScrollOffset;

    public NestedWebView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.webViewStyle);
    }

    public NestedWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.mActivePointerId = -1;
        this.mChildHelper = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mNestedOffsetY = 0;
        }
        motionEventObtain.offsetLocation(0.0f, this.mNestedOffsetY);
        switch (actionMasked) {
            case 0:
                boolean zOnTouchEvent = super.onTouchEvent(motionEventObtain);
                this.mLastY = (int) motionEventObtain.getY();
                this.mActivePointerId = motionEvent.getPointerId(0);
                startNestedScroll(2);
                return zOnTouchEvent;
            case 1:
            case 3:
                boolean zOnTouchEvent2 = super.onTouchEvent(motionEventObtain);
                stopNestedScroll();
                this.mActivePointerId = -1;
                return zOnTouchEvent2;
            case 2:
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y = (int) motionEvent.getY(iFindPointerIndex);
                int i2 = this.mLastY - y;
                if (dispatchNestedPreScroll(0, i2, this.mScrollConsumed, this.mScrollOffset)) {
                    int i3 = i2 - this.mScrollConsumed[1];
                    int[] iArr = this.mScrollOffset;
                    this.mLastY = y - iArr[1];
                    motionEventObtain.offsetLocation(0.0f, -iArr[1]);
                    this.mNestedOffsetY += this.mScrollOffset[1];
                    i = i3;
                } else {
                    i = i2;
                }
                boolean zOnTouchEvent3 = super.onTouchEvent(motionEventObtain);
                int[] iArr2 = this.mScrollOffset;
                if (!dispatchNestedScroll(0, iArr2[1], 0, i, iArr2)) {
                    return zOnTouchEvent3;
                }
                motionEventObtain.offsetLocation(0.0f, this.mScrollOffset[1]);
                int i4 = this.mNestedOffsetY;
                int[] iArr3 = this.mScrollOffset;
                this.mNestedOffsetY = i4 + iArr3[1];
                this.mLastY -= iArr3[1];
                return zOnTouchEvent3;
            case 4:
            default:
                return super.onTouchEvent(motionEventObtain);
            case 5:
                boolean zOnTouchEvent4 = super.onTouchEvent(motionEventObtain);
                int actionIndex = motionEvent.getActionIndex();
                this.mLastY = (int) motionEvent.getY(actionIndex);
                this.mActivePointerId = motionEvent.getPointerId(actionIndex);
                return zOnTouchEvent4;
            case 6:
                boolean zOnTouchEvent5 = super.onTouchEvent(motionEventObtain);
                onSecondaryPointerUp(motionEvent);
                this.mLastY = (int) motionEvent.getY(motionEvent.findPointerIndex(this.mActivePointerId));
                return zOnTouchEvent5;
        }
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            int i = actionIndex == 0 ? 1 : 0;
            this.mLastY = (int) motionEvent.getY(i);
            this.mActivePointerId = motionEvent.getPointerId(i);
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.mChildHelper.setNestedScrollingEnabled(z);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.isNestedScrollingEnabled();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.mChildHelper.startNestedScroll(i);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.mChildHelper.stopNestedScroll();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.hasNestedScrollingParent();
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.mChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.mChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.mChildHelper.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.mChildHelper.dispatchNestedPreFling(f, f2);
    }
}
