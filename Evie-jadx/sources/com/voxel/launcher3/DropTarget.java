package com.voxel.launcher3;

import android.graphics.PointF;
import android.graphics.Rect;
import com.evie.common.dragndrop.DragObjectAbstraction;
import com.evie.common.dragndrop.DragSource;
import com.voxel.launcher3.accessibility.DragViewStateAnnouncer;
import com.voxel.launcher3.dragndrop.DragView;

/* JADX INFO: loaded from: classes.dex */
public interface DropTarget {
    boolean acceptDrop(DragObject dragObject);

    void getHitRectRelativeToDragLayer(Rect rect);

    boolean isDropEnabled();

    void onDragEnter(DragObject dragObject);

    void onDragExit(DragObject dragObject);

    void onDragOver(DragObject dragObject);

    void onDrop(DragObject dragObject);

    void onFlingToDelete(DragObject dragObject, PointF pointF);

    public static class DragObject implements DragObjectAbstraction {
        public boolean accessibleDrag;
        public DragViewStateAnnouncer stateAnnouncer;

        /* JADX INFO: renamed from: x */
        public int f508x = -1;

        /* JADX INFO: renamed from: y */
        public int f509y = -1;
        public int xOffset = -1;
        public int yOffset = -1;
        public boolean dragComplete = false;
        public DragView dragView = null;
        public ItemInfo dragInfo = null;
        public ItemInfo originalDragInfo = null;
        public DragSource dragSource = null;
        public boolean isDesktopLocked = false;
        public Runnable postAnimationRunnable = null;
        public boolean cancelled = false;
        public boolean deferDragViewCleanupPostAnimation = true;

        @Override // com.evie.common.dragndrop.DragObjectAbstraction
        public void setDeferDragViewCleanupPostAnimation(boolean z) {
            this.deferDragViewCleanupPostAnimation = z;
        }

        public final float[] getVisualCenter(float[] fArr) {
            if (fArr == null) {
                fArr = new float[2];
            }
            int i = this.f508x - this.xOffset;
            int i2 = this.f509y - this.yOffset;
            fArr[0] = i + (this.dragView.getDragRegion().width() / 2);
            fArr[1] = i2 + (this.dragView.getDragRegion().height() / 2);
            return fArr;
        }
    }
}
