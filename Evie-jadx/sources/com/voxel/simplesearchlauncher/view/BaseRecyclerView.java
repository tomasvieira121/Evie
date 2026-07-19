package com.voxel.simplesearchlauncher.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.voxel.launcher3.Utilities;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseRecyclerView extends RecyclerView implements RecyclerView.OnItemTouchListener {
    protected Rect mBackgroundPadding;
    private float mDeltaThreshold;
    private int mDownX;
    private int mDownY;
    int mDy;
    private int mLastY;
    protected BaseRecyclerViewFastScrollBar mScrollbar;

    public static class ScrollPositionState {
        public int itemPos;
        public int rowIndex;
        public int rowTopOffset;
    }

    protected abstract void getCurScrollState(ScrollPositionState scrollPositionState);

    public int getFastScrollerThumbInactiveColor(int i) {
        return i;
    }

    public int getFastScrollerTrackColor(int i) {
        return i;
    }

    protected abstract int getTop(int i);

    protected void onFastScrollCompleted() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    protected abstract void onUpdateScrollbar(int i);

    protected abstract String scrollToPositionAtProgress(float f);

    protected boolean supportsFastScrolling() {
        return true;
    }

    public BaseRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDy = 0;
        this.mBackgroundPadding = new Rect();
        this.mDeltaThreshold = getResources().getDisplayMetrics().density * 4.0f;
        this.mScrollbar = new BaseRecyclerViewFastScrollBar(this, getResources());
        setOnScrollListener(new ScrollListener());
    }

    private class ScrollListener extends RecyclerView.OnScrollListener {
        public ScrollListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            BaseRecyclerView baseRecyclerView = BaseRecyclerView.this;
            baseRecyclerView.mDy = i2;
            baseRecyclerView.onUpdateScrollbar(i2);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        addOnItemTouchListener(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        return handleTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        handleTouchEvent(motionEvent);
    }

    private boolean handleTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        switch (action) {
            case 0:
                this.mDownX = x;
                this.mLastY = y;
                this.mDownY = y;
                if (shouldStopScroll(motionEvent)) {
                    stopScroll();
                }
                this.mScrollbar.handleTouchEvent(motionEvent, this.mDownX, this.mDownY, this.mLastY);
                break;
            case 1:
            case 3:
                onFastScrollCompleted();
                this.mScrollbar.handleTouchEvent(motionEvent, this.mDownX, this.mDownY, this.mLastY);
                break;
            case 2:
                this.mLastY = y;
                this.mScrollbar.handleTouchEvent(motionEvent, this.mDownX, this.mDownY, this.mLastY);
                break;
        }
        return this.mScrollbar.isDraggingThumb();
    }

    protected boolean shouldStopScroll(MotionEvent motionEvent) {
        return motionEvent.getAction() == 0 && ((float) Math.abs(this.mDy)) < this.mDeltaThreshold && getScrollState() != 0;
    }

    public Rect getBackgroundPadding() {
        return this.mBackgroundPadding;
    }

    public int getMaxScrollbarWidth() {
        return this.mScrollbar.getThumbMaxWidth();
    }

    protected int getVisibleHeight() {
        return (getHeight() - this.mBackgroundPadding.top) - this.mBackgroundPadding.bottom;
    }

    protected int getAvailableScrollHeight(int i) {
        return ((getPaddingTop() + getTop(i)) + getPaddingBottom()) - getVisibleHeight();
    }

    protected int getAvailableScrollBarHeight() {
        return getVisibleHeight() - this.mScrollbar.getThumbHeight();
    }

    public BaseRecyclerViewFastScrollBar getScrollBar() {
        return this.mScrollbar;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        onUpdateScrollbar(0);
        this.mScrollbar.draw(canvas);
    }

    protected void synchronizeScrollBarThumbOffsetToViewScroll(ScrollPositionState scrollPositionState, int i) {
        int width;
        int availableScrollBarHeight = getAvailableScrollBarHeight();
        int availableScrollHeight = getAvailableScrollHeight(i);
        if (availableScrollHeight <= 0) {
            this.mScrollbar.setThumbOffset(-1, -1);
            return;
        }
        int scrollTop = this.mBackgroundPadding.top + ((int) ((getScrollTop(scrollPositionState) / availableScrollHeight) * availableScrollBarHeight));
        if (Utilities.isRtl(getResources())) {
            width = this.mBackgroundPadding.left;
        } else {
            width = (getWidth() - this.mBackgroundPadding.right) - this.mScrollbar.getThumbWidth();
        }
        this.mScrollbar.setThumbOffset(width, scrollTop);
    }

    protected int getScrollTop(ScrollPositionState scrollPositionState) {
        return (getPaddingTop() + getTop(scrollPositionState.rowIndex)) - scrollPositionState.rowTopOffset;
    }
}
