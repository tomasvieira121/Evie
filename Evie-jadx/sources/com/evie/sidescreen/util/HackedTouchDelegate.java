package com.evie.sidescreen.util;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
public class HackedTouchDelegate extends TouchDelegate {
    private Rect mBounds;
    private boolean mDelegateTargeted;
    private View mDelegateView;
    private int mSlop;
    private Rect mSlopBounds;

    public HackedTouchDelegate(Rect rect, View view) {
        super(rect, view);
        this.mBounds = rect;
        this.mSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.mSlopBounds = new Rect(rect);
        Rect rect2 = this.mSlopBounds;
        int i = this.mSlop;
        rect2.inset(-i, -i);
        this.mDelegateView = view;
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        boolean zContains = true;
        switch (motionEvent.getAction()) {
            case 0:
                if (this.mBounds.contains(x, y)) {
                    this.mDelegateTargeted = true;
                    z = true;
                } else {
                    this.mDelegateTargeted = false;
                    z = false;
                }
                break;
            case 1:
            case 2:
                z = this.mDelegateTargeted;
                if (z) {
                    zContains = this.mSlopBounds.contains(x, y);
                }
                break;
            case 3:
                boolean z2 = this.mDelegateTargeted;
                this.mDelegateTargeted = false;
                z = z2;
                break;
            default:
                z = false;
                break;
        }
        if (!z) {
            return false;
        }
        View view = this.mDelegateView;
        if (zContains) {
            motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
        } else {
            float f = -(this.mSlop * 2);
            motionEvent.setLocation(f, f);
        }
        return view.dispatchTouchEvent(motionEvent);
    }
}
