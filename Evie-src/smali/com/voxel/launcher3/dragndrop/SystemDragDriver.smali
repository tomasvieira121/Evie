.class Lcom/voxel/launcher3/dragndrop/SystemDragDriver;
.super Lcom/voxel/launcher3/dragndrop/DragDriver;
.source "DragDriver.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

.field mLastX:F

.field mLastY:F

.field mReceivedDropEvent:Z


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/dragndrop/DragController;Landroid/content/Context;Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragDriver;-><init>(Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;)V

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/voxel/launcher3/dragndrop/SystemDragDriver;->mReceivedDropEvent:Z

    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lcom/voxel/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 113
    iput p1, p0, Lcom/voxel/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 117
    iput-object p3, p0, Lcom/voxel/launcher3/dragndrop/SystemDragDriver;->mDragObject:Lcom/voxel/launcher3/DropTarget$DragObject;

    .line 118
    iput-object p2, p0, Lcom/voxel/launcher3/dragndrop/SystemDragDriver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
