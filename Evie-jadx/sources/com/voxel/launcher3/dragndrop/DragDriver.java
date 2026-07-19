package com.voxel.launcher3.dragndrop;

import android.content.Context;
import android.view.MotionEvent;
import com.voxel.launcher3.DropTarget;
import com.voxel.launcher3.Utilities;

/* JADX INFO: loaded from: classes.dex */
public abstract class DragDriver {
    protected final EventListener mEventListener;

    public interface EventListener {
        void onDriverDragCancel();

        void onDriverDragEnd(float f, float f2, DropTarget dropTarget);

        void onDriverDragMove(float f, float f2);
    }

    public void onDragViewAnimationEnd() {
    }

    public DragDriver(EventListener eventListener) {
        this.mEventListener = eventListener;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 1:
                this.mEventListener.onDriverDragMove(motionEvent.getX(), motionEvent.getY());
                this.mEventListener.onDriverDragEnd(motionEvent.getX(), motionEvent.getY(), null);
                break;
            case 2:
                this.mEventListener.onDriverDragMove(motionEvent.getX(), motionEvent.getY());
                break;
            case 3:
                this.mEventListener.onDriverDragCancel();
                break;
        }
        return true;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1) {
            this.mEventListener.onDriverDragEnd(motionEvent.getX(), motionEvent.getY(), null);
        } else if (action == 3) {
            this.mEventListener.onDriverDragCancel();
        }
        return true;
    }

    public static DragDriver create(Context context, DragController dragController, DropTarget.DragObject dragObject, DragOptions dragOptions) {
        if (Utilities.isNycOrAbove() && dragOptions.systemDndStartPoint != null) {
            return new SystemDragDriver(dragController, context, dragObject);
        }
        return new InternalDragDriver(dragController);
    }
}
