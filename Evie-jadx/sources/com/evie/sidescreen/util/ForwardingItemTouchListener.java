package com.evie.sidescreen.util;

import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class ForwardingItemTouchListener implements RecyclerView.OnItemTouchListener {
    private boolean mForwardAll;
    private final int mForwardIndex;
    private final View mTargetView;
    private boolean mShouldCancel = false;
    private boolean mIntercepting = false;

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    public ForwardingItemTouchListener(View view, int i, boolean z) {
        this.mForwardAll = false;
        this.mTargetView = view;
        this.mForwardIndex = i;
        this.mForwardAll = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (recyclerView.getAdapter() == null || recyclerView.getChildCount() <= 0) {
            this.mIntercepting = false;
            return false;
        }
        if (motionEvent.getAction() == 0) {
            if (recyclerView.getChildAdapterPosition(recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY())) == this.mForwardIndex) {
                this.mIntercepting = true;
            } else {
                this.mIntercepting = false;
            }
        }
        if (this.mIntercepting && (this.mForwardAll || recyclerView.getScrollState() == 0)) {
            this.mTargetView.dispatchTouchEvent(motionEvent);
            this.mShouldCancel = true;
        } else if (this.mShouldCancel) {
            this.mTargetView.dispatchTouchEvent(MotionEvent.obtain(motionEvent));
            this.mShouldCancel = false;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.mIntercepting = false;
            this.mShouldCancel = false;
        }
        return this.mIntercepting && this.mForwardAll;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        this.mTargetView.dispatchTouchEvent(motionEvent);
    }
}
