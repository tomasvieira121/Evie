.class Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/dragndrop/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/voxel/launcher3/dragndrop/DragController;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/dragndrop/DragController;)V
    .locals 0

    .line 871
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->this$0:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 875
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->this$0:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object v0, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragScroller:Lcom/voxel/launcher3/dragndrop/DragScroller;

    if-eqz v0, :cond_1

    .line 876
    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->this$0:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object v0, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragScroller:Lcom/voxel/launcher3/dragndrop/DragScroller;

    invoke-interface {v0}, Lcom/voxel/launcher3/dragndrop/DragScroller;->scrollLeft()V

    goto :goto_0

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->this$0:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object v0, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragScroller:Lcom/voxel/launcher3/dragndrop/DragScroller;

    invoke-interface {v0}, Lcom/voxel/launcher3/dragndrop/DragScroller;->scrollRight()V

    .line 881
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->this$0:Lcom/voxel/launcher3/dragndrop/DragController;

    const/4 v1, 0x0

    iput v1, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mScrollState:I

    .line 882
    iput v1, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 883
    iget-object v0, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mDragScroller:Lcom/voxel/launcher3/dragndrop/DragScroller;

    invoke-interface {v0}, Lcom/voxel/launcher3/dragndrop/DragScroller;->onExitScrollArea()Z

    .line 884
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->this$0:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object v0, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->onExitScrollArea()V

    .line 886
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->this$0:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->this$0:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object v2, v0, Lcom/voxel/launcher3/dragndrop/DragController;->mLastTouch:[I

    aget v1, v2, v1

    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->this$0:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object v2, v2, Lcom/voxel/launcher3/dragndrop/DragController;->mLastTouch:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/dragndrop/DragController;->checkScrollState(II)V

    :cond_1
    return-void
.end method

.method setDirection(I)V
    .locals 0

    .line 894
    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragController$ScrollRunnable;->mDirection:I

    return-void
.end method
