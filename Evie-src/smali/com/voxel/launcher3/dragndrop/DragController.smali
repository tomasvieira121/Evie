.class public Lcom/voxel/launcher3/dragndrop/DragController;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;,
        Lcom/voxel/launcher3/dragndrop/DragController$DragListener;
    }
.end annotation


# instance fields
.field private final mCoordinatesTemp:[I

.field mDistanceSinceScroll:I

.field private mDragDriver:Lcom/voxel/launcher3/dragndrop/DragDriver;

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

.field mDragScroller:Lcom/voxel/launcher3/dragndrop/DragScroller;

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFlingToDeleteDropTarget:Lcom/voxel/launcher3/DropTarget;

.field protected final mFlingToDeleteThresholdVelocity:I

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDragDeferred:Z

.field private final mIsRtl:Z

.field private mLastDropTarget:Lcom/voxel/launcher3/DropTarget;

.field mLastTouch:[I

.field mLastTouchUpTime:J

.field mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/dragndrop/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;

.field mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private final mScrollZone:I

.field private mTmpPoint:[I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 4

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 80
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragDriver:Lcom/voxel/launcher3/dragndrop/DragDriver;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 128
    iput v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollState:I

    .line 129
    new-instance v2, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;-><init>(Lcom/voxel/launcher3/dragndrop/DragController;)V

    iput-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollRunnable:Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;

    .line 135
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastTouch:[I

    const-wide/16 v2, -0x1

    .line 136
    iput-wide v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastTouchUpTime:J

    .line 137
    iput v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 139
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mTmpPoint:[I

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 169
    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 171
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mHandler:Landroid/os/Handler;

    const p1, 0x7f0701d6

    .line 172
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollZone:I

    .line 173
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const p1, 0x7f070108

    .line 176
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mFlingToDeleteThresholdVelocity:I

    .line 177
    invoke-static {v0}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mIsRtl:Z

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 849
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private checkTouchMove(Lcom/voxel/launcher3/DropTarget;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 592
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/voxel/launcher3/DropTarget;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 594
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/voxel/launcher3/DropTarget;->onDragExit(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/voxel/launcher3/DropTarget;->onDragEnter(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/voxel/launcher3/DropTarget;->onDragOver(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    goto :goto_0

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/voxel/launcher3/DropTarget;

    if-eqz v0, :cond_3

    .line 601
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/voxel/launcher3/DropTarget;->onDragExit(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 604
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/voxel/launcher3/DropTarget;

    return-void
.end method

.method private clearScrollRunnable()V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollRunnable:Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 546
    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 547
    iput v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollState:I

    .line 548
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollRunnable:Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->setDirection(I)V

    .line 549
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragScroller:Lcom/voxel/launcher3/dragndrop/DragScroller;

    invoke-interface {v0}, Lcom/voxel/launcher3/dragndrop/DragScroller;->onExitScrollArea()Z

    .line 550
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->onExitScrollArea()V

    :cond_0
    return-void
.end method

.method private endDrag()V
    .locals 3

    .line 376
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragDriver:Lcom/voxel/launcher3/dragndrop/DragDriver;

    .line 378
    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    .line 379
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragController;->clearScrollRunnable()V

    const/4 v1, 0x0

    .line 381
    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_1

    .line 382
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-boolean v1, v1, Lcom/voxel/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-nez v1, :cond_0

    .line 384
    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/voxel/launcher3/dragndrop/DragView;->remove()V

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iput-object v0, v2, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    :cond_1
    if-nez v1, :cond_3

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/dragndrop/DragController$DragListener;

    .line 392
    invoke-interface {v2}, Lcom/voxel/launcher3/dragndrop/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 394
    :cond_2
    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    .line 398
    :cond_3
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragController;->releaseVelocityTracker()V

    return-void
.end method

.method private findDropTarget(II[I)Lcom/voxel/launcher3/DropTarget;
    .locals 6

    .line 779
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 781
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 782
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    .line 784
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/DropTarget;

    .line 785
    invoke-interface {v4}, Lcom/voxel/launcher3/DropTarget;->isDropEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 788
    :cond_0
    invoke-interface {v4, v0}, Lcom/voxel/launcher3/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 790
    iget-object v5, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iput p1, v5, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    .line 791
    iput p2, v5, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    .line 792
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    .line 794
    aput p1, p3, v0

    .line 795
    aput p2, p3, v3

    .line 796
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object p1

    move-object p2, v4

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/voxel/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    return-object v4

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAngleBetweenVectors(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    .line 734
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 735
    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result p2

    mul-float p1, p1, p2

    div-float/2addr v0, p1

    float-to-double p1, v0

    .line 734
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 429
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mTmpPoint:[I

    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 430
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mTmpPoint:[I

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    aput p2, p1, v3

    .line 431
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mTmpPoint:[I

    return-object p1
.end method

.method private handleMoveEvent(II)V
    .locals 9

    .line 555
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/dragndrop/DragView;->move(II)V

    .line 558
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 559
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/dragndrop/DragController;->findDropTarget(II[I)Lcom/voxel/launcher3/DropTarget;

    move-result-object v1

    .line 560
    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    const/4 v3, 0x0

    aget v4, v0, v3

    iput v4, v2, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    const/4 v4, 0x1

    .line 561
    aget v0, v0, v4

    iput v0, v2, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    .line 562
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->checkTouchMove(Lcom/voxel/launcher3/DropTarget;)V

    .line 565
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-boolean v0, v0, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    if-nez v0, :cond_0

    .line 566
    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastTouch:[I

    aget v5, v2, v3

    sub-int/2addr v5, p1

    int-to-double v5, v5

    aget v2, v2, v4

    sub-int/2addr v2, p2

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v5

    double-to-int v0, v0

    iput v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 567
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastTouch:[I

    aput p1, v0, v3

    .line 568
    aput p2, v0, v4

    .line 569
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/dragndrop/DragController;->checkScrollState(II)V

    .line 572
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mIsDragDeferred:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/voxel/launcher3/dragndrop/DragOptions;->deferDragCondition:Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    iget v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownX:I

    sub-int/2addr p1, v1

    int-to-double v1, p1

    iget p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownY:I

    sub-int/2addr p2, p1

    int-to-double p1, p2

    .line 573
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    .line 572
    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;->shouldStartDeferredDrag(D)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragController;->startDeferredDrag()V

    :cond_1
    return-void
.end method

.method private isFlingingToDelete(Lcom/evie/common/dragndrop/DragSource;)Landroid/graphics/PointF;
    .locals 6

    .line 710
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mFlingToDeleteDropTarget:Lcom/voxel/launcher3/DropTarget;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 711
    :cond_0
    invoke-interface {p1}, Lcom/evie/common/dragndrop/DragSource;->supportsFlingToDelete()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 713
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 714
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 715
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-direct {p1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v0, 0x42100000    # 36.0f

    .line 717
    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    iget v3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mFlingToDeleteThresholdVelocity:I

    int-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 719
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 720
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/dragndrop/DragController;->getAngleBetweenVectors(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    goto :goto_0

    .line 721
    :cond_2
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 722
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget v3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mFlingToDeleteThresholdVelocity:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 724
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 725
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/dragndrop/DragController;->getAngleBetweenVectors(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    :cond_3
    :goto_0
    float-to-double v2, v0

    const-wide v4, 0x4041800000000000L    # 35.0

    .line 727
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_4

    return-object p1

    :cond_4
    return-object v1
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 857
    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public addDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDropTarget(Lcom/voxel/launcher3/DropTarget;)V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelDrag()V
    .locals 4

    .line 350
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/voxel/launcher3/DropTarget;

    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/voxel/launcher3/DropTarget;->onDragExit(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/voxel/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    const/4 v2, 0x1

    .line 355
    iput-boolean v2, v0, Lcom/voxel/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 356
    iput-boolean v2, v0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 357
    iget-object v0, v0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v2, v3, v1, v1}, Lcom/evie/common/dragndrop/DragSource;->onDropCompleted(Landroid/view/View;Lcom/evie/common/dragndrop/DragObjectAbstraction;ZZ)V

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragController;->endDrag()V

    return-void
.end method

.method checkScrollState(II)V
    .locals 6

    .line 609
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    .line 610
    iget v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    if-ge v1, v0, :cond_0

    const/16 v0, 0x384

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    .line 611
    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v1

    .line 612
    iget-boolean v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mIsRtl:Z

    xor-int/lit8 v3, v2, 0x1

    .line 615
    iget v4, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollZone:I

    const/4 v5, 0x1

    if-ge p1, v4, :cond_1

    .line 616
    iget v3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollState:I

    if-nez v3, :cond_3

    .line 617
    iput v5, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollState:I

    .line 618
    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragScroller:Lcom/voxel/launcher3/dragndrop/DragScroller;

    invoke-interface {v3, p1, p2, v2}, Lcom/voxel/launcher3/dragndrop/DragScroller;->onEnterScrollArea(III)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 619
    invoke-virtual {v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->onEnterScrollArea()V

    .line 620
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollRunnable:Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;

    invoke-virtual {p1, v2}, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->setDirection(I)V

    .line 621
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollRunnable:Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 624
    :cond_1
    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollZone:I

    sub-int/2addr v2, v4

    if-le p1, v2, :cond_2

    .line 625
    iget v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollState:I

    if-nez v2, :cond_3

    .line 626
    iput v5, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollState:I

    .line 627
    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragScroller:Lcom/voxel/launcher3/dragndrop/DragScroller;

    invoke-interface {v2, p1, p2, v3}, Lcom/voxel/launcher3/dragndrop/DragScroller;->onEnterScrollArea(III)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 628
    invoke-virtual {v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->onEnterScrollArea()V

    .line 629
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollRunnable:Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;

    invoke-virtual {p1, v3}, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->setDirection(I)V

    .line 630
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollRunnable:Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 634
    :cond_2
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragController;->clearScrollRunnable()V

    :cond_3
    :goto_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 335
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragDriver:Lcom/voxel/launcher3/dragndrop/DragDriver;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method drop(Lcom/voxel/launcher3/DropTarget;FFLandroid/graphics/PointF;)V
    .locals 3

    .line 739
    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 741
    iget-object p3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    const/4 v0, 0x0

    aget v1, p2, v0

    iput v1, p3, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    const/4 v1, 0x1

    .line 742
    aget p2, p2, v1

    iput p2, p3, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    .line 745
    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/voxel/launcher3/DropTarget;

    if-eq p1, p2, :cond_1

    if-eqz p2, :cond_0

    .line 747
    invoke-interface {p2, p3}, Lcom/voxel/launcher3/DropTarget;->onDragExit(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 749
    :cond_0
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/voxel/launcher3/DropTarget;

    if-eqz p1, :cond_1

    .line 751
    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-interface {p1, p2}, Lcom/voxel/launcher3/DropTarget;->onDragEnter(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 755
    :cond_1
    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iput-boolean v1, p2, Lcom/voxel/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-eqz p1, :cond_3

    .line 760
    invoke-interface {p1, p2}, Lcom/voxel/launcher3/DropTarget;->onDragExit(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 761
    iget-boolean p2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mIsDragDeferred:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-interface {p1, p2}, Lcom/voxel/launcher3/DropTarget;->acceptDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p4, :cond_2

    .line 763
    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-interface {p1, p2, p4}, Lcom/voxel/launcher3/DropTarget;->onFlingToDelete(Lcom/voxel/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 765
    :cond_2
    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-interface {p1, p2}, Lcom/voxel/launcher3/DropTarget;->onDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 770
    :goto_1
    instance-of p3, p1, Landroid/view/View;

    if-eqz p3, :cond_4

    check-cast p1, Landroid/view/View;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 771
    :goto_2
    iget-object p3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-object p3, p3, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    if-eqz p4, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-interface {p3, p1, v2, v0, p2}, Lcom/evie/common/dragndrop/DragSource;->onDropCompleted(Landroid/view/View;Lcom/evie/common/dragndrop/DragObjectAbstraction;ZZ)V

    .line 773
    iget-boolean p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mIsDragDeferred:Z

    if-eqz p1, :cond_6

    .line 774
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    iget-object p1, p1, Lcom/voxel/launcher3/dragndrop/DragOptions;->deferDragCondition:Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;->onDropBeforeDeferredDrag()V

    :cond_6
    return-void
.end method

.method public forceTouchMove()V
    .locals 5

    .line 583
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 584
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastTouch:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {p0, v3, v1, v0}, Lcom/voxel/launcher3/dragndrop/DragController;->findDropTarget(II[I)Lcom/voxel/launcher3/DropTarget;

    move-result-object v1

    .line 585
    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    aget v2, v0, v2

    iput v2, v3, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    .line 586
    aget v0, v0, v4

    iput v0, v3, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    .line 587
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->checkTouchMove(Lcom/voxel/launcher3/DropTarget;)V

    return-void
.end method

.method public getLastGestureUpTime()J
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragDriver:Lcom/voxel/launcher3/dragndrop/DragDriver;

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 438
    :cond_0
    iget-wide v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastTouchUpTime:J

    return-wide v0
.end method

.method public isDragging()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragDriver:Lcom/voxel/launcher3/dragndrop/DragDriver;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/voxel/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAppsRemoved(Lcom/voxel/launcher3/util/ItemInfoMatcher;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, v0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 366
    instance-of v1, v0, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/voxel/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/util/ItemInfoMatcher;->matches(Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragController;->cancelDrag()V

    :cond_0
    return-void
.end method

.method onDeferredEndDrag(Lcom/voxel/launcher3/dragndrop/DragView;)V
    .locals 1

    .line 405
    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragView;->remove()V

    .line 407
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    if-nez p1, :cond_0

    return-void

    .line 410
    :cond_0
    iget-boolean p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz p1, :cond_1

    .line 412
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/dragndrop/DragController$DragListener;

    .line 413
    invoke-interface {v0}, Lcom/voxel/launcher3/dragndrop/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 417
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    return-void
.end method

.method public onDeferredEndFling(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 0

    .line 421
    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    invoke-interface {p1}, Lcom/evie/common/dragndrop/DragSource;->onFlingToDeleteCompleted()V

    return-void
.end method

.method public onDragViewAnimationEnd()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragDriver:Lcom/voxel/launcher3/dragndrop/DragDriver;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragDriver;->onDragViewAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onDriverDragCancel()V
    .locals 0

    .line 484
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragController;->cancelDrag()V

    return-void
.end method

.method public onDriverDragEnd(FFLcom/voxel/launcher3/DropTarget;)V
    .locals 3

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 469
    :cond_0
    iget-object p3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-object p3, p3, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    invoke-direct {p0, p3}, Lcom/voxel/launcher3/dragndrop/DragController;->isFlingingToDelete(Lcom/evie/common/dragndrop/DragSource;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 471
    iget-object p3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mFlingToDeleteDropTarget:Lcom/voxel/launcher3/DropTarget;

    goto :goto_0

    :cond_1
    float-to-int p3, p1

    float-to-int v1, p2

    .line 473
    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    invoke-direct {p0, p3, v1, v2}, Lcom/voxel/launcher3/dragndrop/DragController;->findDropTarget(II[I)Lcom/voxel/launcher3/DropTarget;

    move-result-object p3

    .line 477
    :goto_0
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/voxel/launcher3/dragndrop/DragController;->drop(Lcom/voxel/launcher3/DropTarget;FFLandroid/graphics/PointF;)V

    .line 479
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragController;->endDrag()V

    return-void
.end method

.method public onDriverDragMove(FF)V
    .locals 1

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 450
    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-direct {p0, p2, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 491
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/voxel/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    return v1

    .line 496
    :cond_0
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 499
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/voxel/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v2

    .line 500
    aget v3, v2, v1

    const/4 v4, 0x1

    .line 501
    aget v2, v2, v4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 510
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastTouchUpTime:J

    goto :goto_0

    .line 506
    :pswitch_1
    iput v3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownX:I

    .line 507
    iput v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownY:I

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragDriver:Lcom/voxel/launcher3/dragndrop/DragDriver;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragDriver;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 642
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragDriver:Lcom/voxel/launcher3/dragndrop/DragDriver;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/voxel/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 647
    :cond_0
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/voxel/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v2

    .line 651
    aget v3, v2, v1

    const/4 v4, 0x1

    .line 652
    aget v2, v2, v4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 657
    :pswitch_0
    iput v3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownX:I

    .line 658
    iput v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownY:I

    .line 660
    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollZone:I

    if-lt v3, v0, :cond_2

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollZone:I

    sub-int/2addr v0, v2

    if-le v3, v0, :cond_1

    goto :goto_0

    .line 664
    :cond_1
    iput v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollState:I

    goto :goto_1

    .line 661
    :cond_2
    :goto_0
    iput v4, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollState:I

    .line 662
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollRunnable:Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 669
    :cond_3
    :pswitch_1
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollRunnable:Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 673
    :goto_1
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragDriver:Lcom/voxel/launcher3/dragndrop/DragDriver;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragDriver;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDropTarget(Lcom/voxel/launcher3/DropTarget;)V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetLastGestureUpTime()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 443
    iput-wide v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastTouchUpTime:J

    return-void
.end method

.method public setDragScoller(Lcom/voxel/launcher3/dragndrop/DragScroller;)V
    .locals 0

    .line 805
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragScroller:Lcom/voxel/launcher3/dragndrop/DragScroller;

    return-void
.end method

.method public setMoveTarget(Landroid/view/View;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mMoveTarget:Landroid/view/View;

    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollView:Landroid/view/View;

    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public startDeferredDrag()V
    .locals 4

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/dragndrop/DragController$DragListener;

    .line 313
    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    invoke-interface {v1, v2, v3}, Lcom/voxel/launcher3/dragndrop/DragController$DragListener;->onDragStart(Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/voxel/launcher3/dragndrop/DragOptions;->deferDragCondition:Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;->onDragStart()V

    .line 316
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    iget-boolean v0, v0, Lcom/voxel/launcher3/dragndrop/DragOptions;->isDesktopLocked:Z

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060069

    .line 318
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/dragndrop/DragView;->setColor(I)V

    :cond_1
    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragController;->mIsDragDeferred:Z

    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FLcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    .line 230
    iget-object v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_0

    .line 231
    iget-object v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const-string v6, "input_method"

    .line 232
    invoke-virtual {v5, v6}, Lcom/voxel/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 234
    :cond_0
    iget-object v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 236
    iput-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    .line 237
    iget-object v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/voxel/launcher3/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    if-eqz v5, :cond_1

    .line 238
    iget-object v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/voxel/launcher3/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownX:I

    .line 239
    iget-object v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/voxel/launcher3/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownY:I

    .line 242
    :cond_1
    iget v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownX:I

    sub-int v11, v5, p2

    .line 243
    iget v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownY:I

    sub-int v12, v5, p3

    if-nez v3, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 245
    :cond_2
    iget v5, v3, Landroid/graphics/Rect;->left:I

    :goto_0
    if-nez v3, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    .line 246
    :cond_3
    iget v6, v3, Landroid/graphics/Rect;->top:I

    :goto_1
    const/4 v8, 0x0

    .line 248
    iput-object v8, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/voxel/launcher3/DropTarget;

    .line 250
    new-instance v8, Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-direct {v8}, Lcom/voxel/launcher3/DropTarget$DragObject;-><init>()V

    iput-object v8, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    .line 252
    iget-object v8, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    iget-object v8, v8, Lcom/voxel/launcher3/dragndrop/DragOptions;->deferDragCondition:Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;->shouldStartDeferredDrag(D)Z

    move-result v8

    const/4 v15, 0x1

    xor-int/2addr v8, v15

    iput-boolean v8, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mIsDragDeferred:Z

    .line 254
    iget-object v8, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 255
    sget-boolean v9, Lcom/voxel/launcher3/config/FeatureFlags;->LAUNCHER3_LEGACY_WORKSPACE_DND:Z

    if-eqz v9, :cond_4

    const v9, 0x7f070106

    .line 256
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    move v14, v8

    goto :goto_2

    :cond_4
    iget-boolean v9, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mIsDragDeferred:Z

    if-eqz v9, :cond_5

    const v9, 0x7f0700cb

    .line 258
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    move v14, v8

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    const/4 v14, 0x0

    .line 260
    :goto_2
    iget-object v13, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    new-instance v10, Lcom/voxel/launcher3/dragndrop/DragView;

    iget-object v9, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    move-object v8, v10

    move-object v15, v10

    move-object/from16 v10, p1

    move-object v7, v13

    move/from16 v13, p8

    invoke-direct/range {v8 .. v14}, Lcom/voxel/launcher3/dragndrop/DragView;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/graphics/Bitmap;IIFF)V

    iput-object v15, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    .line 263
    iget-object v7, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-boolean v4, v4, Lcom/voxel/launcher3/dragndrop/DragOptions;->isDesktopLocked:Z

    iput-boolean v4, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    .line 264
    iget-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/voxel/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 265
    iget-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    iget-boolean v4, v4, Lcom/voxel/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v4, :cond_6

    .line 267
    iget-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    .line 268
    iget-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    .line 269
    iget-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/voxel/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    goto :goto_3

    .line 271
    :cond_6
    iget-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget v7, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownX:I

    add-int v5, p2, v5

    sub-int/2addr v7, v5

    iput v7, v4, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    .line 272
    iget v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownY:I

    add-int v6, p3, v6

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    .line 273
    invoke-static {v15}, Lcom/voxel/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/voxel/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object v5

    iput-object v5, v4, Lcom/voxel/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/voxel/launcher3/accessibility/DragViewStateAnnouncer;

    .line 275
    iget-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v5, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-object v6, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    invoke-static {v4, v0, v5, v6}, Lcom/voxel/launcher3/dragndrop/DragDriver;->create(Landroid/content/Context;Lcom/voxel/launcher3/dragndrop/DragController;Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragDriver;

    move-result-object v4

    iput-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragDriver:Lcom/voxel/launcher3/dragndrop/DragDriver;

    .line 278
    :goto_3
    iget-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    move-object/from16 v5, p4

    iput-object v5, v4, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    .line 279
    iput-object v1, v4, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 280
    new-instance v5, Lcom/voxel/launcher3/ItemInfo;

    invoke-direct {v5}, Lcom/voxel/launcher3/ItemInfo;-><init>()V

    iput-object v5, v4, Lcom/voxel/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 281
    iget-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    iget-object v4, v4, Lcom/voxel/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {v4, v1}, Lcom/voxel/launcher3/ItemInfo;->copyFrom(Lcom/voxel/launcher3/ItemInfo;)V

    if-eqz v2, :cond_7

    .line 284
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v15, v1}, Lcom/voxel/launcher3/dragndrop/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    :cond_7
    if-eqz v3, :cond_8

    .line 287
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v15, v1}, Lcom/voxel/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 290
    :cond_8
    iget-object v1, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->performHapticFeedback(I)Z

    .line 292
    iget v1, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownX:I

    iget v3, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownY:I

    invoke-virtual {v15, v1, v3}, Lcom/voxel/launcher3/dragndrop/DragView;->show(II)V

    .line 293
    iput v2, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 295
    iget-boolean v1, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mIsDragDeferred:Z

    if-nez v1, :cond_9

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/dragndrop/DragController;->startDeferredDrag()V

    goto :goto_4

    .line 298
    :cond_9
    iget-object v1, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mOptions:Lcom/voxel/launcher3/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/voxel/launcher3/dragndrop/DragOptions;->deferDragCondition:Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    invoke-virtual {v1}, Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;->onDeferredDragStart()V

    .line 301
    :goto_4
    iget-object v1, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastTouch:[I

    iget v3, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownX:I

    aput v3, v1, v2

    .line 302
    iget v2, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownY:I

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 303
    invoke-direct {v0, v3, v2}, Lcom/voxel/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    return-object v15
.end method

.method public startDragTouchCentered(Landroid/graphics/Bitmap;Lcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FLcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;
    .locals 11

    move-object v10, p0

    .line 204
    iget v0, v10, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v2, v0, -0x14

    .line 205
    iget v0, v10, Lcom/voxel/launcher3/dragndrop/DragController;->mMotionDownY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, -0x14

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 207
    invoke-virtual/range {v0 .. v9}, Lcom/voxel/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FLcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;

    move-result-object v0

    return-object v0
.end method
