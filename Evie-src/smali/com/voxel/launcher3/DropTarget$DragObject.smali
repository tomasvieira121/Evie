.class public Lcom/voxel/launcher3/DropTarget$DragObject;
.super Ljava/lang/Object;
.source "DropTarget.java"

# interfaces
.implements Lcom/evie/common/dragndrop/DragObjectAbstraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragObject"
.end annotation


# instance fields
.field public accessibleDrag:Z

.field public cancelled:Z

.field public deferDragViewCleanupPostAnimation:Z

.field public dragComplete:Z

.field public dragInfo:Lcom/voxel/launcher3/ItemInfo;

.field public dragSource:Lcom/evie/common/dragndrop/DragSource;

.field public dragView:Lcom/voxel/launcher3/dragndrop/DragView;

.field public isDesktopLocked:Z

.field public originalDragInfo:Lcom/voxel/launcher3/ItemInfo;

.field public postAnimationRunnable:Ljava/lang/Runnable;

.field public stateAnnouncer:Lcom/voxel/launcher3/accessibility/DragViewStateAnnouncer;

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    .line 35
    iput v0, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    .line 38
    iput v0, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    .line 41
    iput v0, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragComplete:Z

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    .line 53
    iput-object v1, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 56
    iput-object v1, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 59
    iput-object v1, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    .line 62
    iput-boolean v0, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    .line 68
    iput-object v1, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 71
    iput-boolean v0, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->cancelled:Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    return-void
.end method


# virtual methods
.method public final getVisualCenter([F)[F
    .locals 5

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 93
    new-array p1, v0, [F

    .line 99
    :cond_0
    iget v1, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    iget v2, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v1, v2

    .line 100
    iget v2, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    iget v3, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 103
    iget-object v4, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v4}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v1, v4

    int-to-float v1, v1

    aput v1, p1, v3

    const/4 v1, 0x1

    .line 104
    iget-object v3, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v3}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-float v0, v2

    aput v0, p1, v1

    return-object p1
.end method

.method public setDeferDragViewCleanupPostAnimation(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/voxel/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    return-void
.end method
